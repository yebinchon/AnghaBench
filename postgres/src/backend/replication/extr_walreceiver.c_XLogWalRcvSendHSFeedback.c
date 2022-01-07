
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef scalar_t__ TransactionId ;
typedef int TimestampTz ;
struct TYPE_6__ {int len; int data; } ;
typedef int FullTransactionId ;


 int DEBUG2 ;
 scalar_t__ EpochFromFullTransactionId (int ) ;
 int GetCurrentTimestamp () ;
 scalar_t__ GetOldestXmin (int *,int) ;
 int HotStandbyActive () ;
 scalar_t__ InvalidTransactionId ;
 int PROCARRAY_FLAGS_DEFAULT ;
 int PROCARRAY_SLOTS_XMIN ;
 int ProcArrayGetReplicationSlotXmin (scalar_t__*,scalar_t__*) ;
 int ReadNextFullTransactionId () ;
 int TimestampDifferenceExceeds (int ,int ,int) ;
 scalar_t__ TransactionIdIsValid (scalar_t__) ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,scalar_t__) ;
 scalar_t__ XidFromFullTransactionId (int ) ;
 int elog (int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ hot_standby_feedback ;
 int pq_sendbyte (TYPE_1__*,char) ;
 int pq_sendint32 (TYPE_1__*,scalar_t__) ;
 int pq_sendint64 (TYPE_1__*,int ) ;
 TYPE_1__ reply_message ;
 int resetStringInfo (TYPE_1__*) ;
 int wal_receiver_status_interval ;
 int walrcv_send (int ,int ,int ) ;
 int wrconn ;

__attribute__((used)) static void
XLogWalRcvSendHSFeedback(bool immed)
{
 TimestampTz now;
 FullTransactionId nextFullXid;
 TransactionId nextXid;
 uint32 xmin_epoch,
    catalog_xmin_epoch;
 TransactionId xmin,
    catalog_xmin;
 static TimestampTz sendTime = 0;


 static bool master_has_standby_xmin = 1;





 if ((wal_receiver_status_interval <= 0 || !hot_standby_feedback) &&
  !master_has_standby_xmin)
  return;


 now = GetCurrentTimestamp();

 if (!immed)
 {



  if (!TimestampDifferenceExceeds(sendTime, now,
          wal_receiver_status_interval * 1000))
   return;
  sendTime = now;
 }
 if (!HotStandbyActive())
  return;





 if (hot_standby_feedback)
 {
  TransactionId slot_xmin;







  xmin = GetOldestXmin(((void*)0),
        PROCARRAY_FLAGS_DEFAULT | PROCARRAY_SLOTS_XMIN);

  ProcArrayGetReplicationSlotXmin(&slot_xmin, &catalog_xmin);

  if (TransactionIdIsValid(slot_xmin) &&
   TransactionIdPrecedes(slot_xmin, xmin))
   xmin = slot_xmin;
 }
 else
 {
  xmin = InvalidTransactionId;
  catalog_xmin = InvalidTransactionId;
 }





 nextFullXid = ReadNextFullTransactionId();
 nextXid = XidFromFullTransactionId(nextFullXid);
 xmin_epoch = EpochFromFullTransactionId(nextFullXid);
 catalog_xmin_epoch = xmin_epoch;
 if (nextXid < xmin)
  xmin_epoch--;
 if (nextXid < catalog_xmin)
  catalog_xmin_epoch--;

 elog(DEBUG2, "sending hot standby feedback xmin %u epoch %u catalog_xmin %u catalog_xmin_epoch %u",
   xmin, xmin_epoch, catalog_xmin, catalog_xmin_epoch);


 resetStringInfo(&reply_message);
 pq_sendbyte(&reply_message, 'h');
 pq_sendint64(&reply_message, GetCurrentTimestamp());
 pq_sendint32(&reply_message, xmin);
 pq_sendint32(&reply_message, xmin_epoch);
 pq_sendint32(&reply_message, catalog_xmin);
 pq_sendint32(&reply_message, catalog_xmin_epoch);
 walrcv_send(wrconn, reply_message.data, reply_message.len);
 if (TransactionIdIsValid(xmin) || TransactionIdIsValid(catalog_xmin))
  master_has_standby_xmin = 1;
 else
  master_has_standby_xmin = 0;
}

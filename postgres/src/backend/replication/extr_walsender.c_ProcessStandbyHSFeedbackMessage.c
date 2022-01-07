
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32 ;
struct TYPE_4__ {int mutex; int replyTime; } ;
typedef TYPE_1__ WalSnd ;
typedef void* TransactionId ;
typedef int TimestampTz ;
struct TYPE_5__ {void* xmin; } ;


 scalar_t__ DEBUG2 ;
 void* InvalidTransactionId ;
 TYPE_3__* MyPgXact ;
 int * MyReplicationSlot ;
 TYPE_1__* MyWalSnd ;
 int PhysicalReplicationSlotNewXmin (void*,void*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int TransactionIdInRecentPast (void*,void*) ;
 scalar_t__ TransactionIdIsNormal (void*) ;
 scalar_t__ TransactionIdPrecedes (void*,void*) ;
 int elog (scalar_t__,char*,void*,void*,void*,void*,char*) ;
 scalar_t__ log_min_messages ;
 int pfree (char*) ;
 void* pq_getmsgint (int *,int) ;
 int pq_getmsgint64 (int *) ;
 char* pstrdup (int ) ;
 int reply_message ;
 int timestamptz_to_str (int ) ;

__attribute__((used)) static void
ProcessStandbyHSFeedbackMessage(void)
{
 TransactionId feedbackXmin;
 uint32 feedbackEpoch;
 TransactionId feedbackCatalogXmin;
 uint32 feedbackCatalogEpoch;
 TimestampTz replyTime;






 replyTime = pq_getmsgint64(&reply_message);
 feedbackXmin = pq_getmsgint(&reply_message, 4);
 feedbackEpoch = pq_getmsgint(&reply_message, 4);
 feedbackCatalogXmin = pq_getmsgint(&reply_message, 4);
 feedbackCatalogEpoch = pq_getmsgint(&reply_message, 4);

 if (log_min_messages <= DEBUG2)
 {
  char *replyTimeStr;


  replyTimeStr = pstrdup(timestamptz_to_str(replyTime));

  elog(DEBUG2, "hot standby feedback xmin %u epoch %u, catalog_xmin %u epoch %u reply_time %s",
    feedbackXmin,
    feedbackEpoch,
    feedbackCatalogXmin,
    feedbackCatalogEpoch,
    replyTimeStr);

  pfree(replyTimeStr);
 }





 {
  WalSnd *walsnd = MyWalSnd;

  SpinLockAcquire(&walsnd->mutex);
  walsnd->replyTime = replyTime;
  SpinLockRelease(&walsnd->mutex);
 }





 if (!TransactionIdIsNormal(feedbackXmin)
  && !TransactionIdIsNormal(feedbackCatalogXmin))
 {
  MyPgXact->xmin = InvalidTransactionId;
  if (MyReplicationSlot != ((void*)0))
   PhysicalReplicationSlotNewXmin(feedbackXmin, feedbackCatalogXmin);
  return;
 }





 if (TransactionIdIsNormal(feedbackXmin) &&
  !TransactionIdInRecentPast(feedbackXmin, feedbackEpoch))
  return;

 if (TransactionIdIsNormal(feedbackCatalogXmin) &&
  !TransactionIdInRecentPast(feedbackCatalogXmin, feedbackCatalogEpoch))
  return;
 if (MyReplicationSlot != ((void*)0))
  PhysicalReplicationSlotNewXmin(feedbackXmin, feedbackCatalogXmin);
 else
 {
  if (TransactionIdIsNormal(feedbackCatalogXmin)
   && TransactionIdPrecedes(feedbackCatalogXmin, feedbackXmin))
   MyPgXact->xmin = feedbackCatalogXmin;
  else
   MyPgXact->xmin = feedbackXmin;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int data; } ;


 int DEBUG2 ;
 int GetCurrentTimestamp () ;
 int elog (int ,char*) ;
 TYPE_1__ output_message ;
 int pq_putmessage_noblock (char,int ,int ) ;
 int pq_sendbyte (TYPE_1__*,int) ;
 int pq_sendint64 (TYPE_1__*,int ) ;
 int resetStringInfo (TYPE_1__*) ;
 int sentPtr ;

__attribute__((used)) static void
WalSndKeepalive(bool requestReply)
{
 elog(DEBUG2, "sending replication keepalive");


 resetStringInfo(&output_message);
 pq_sendbyte(&output_message, 'k');
 pq_sendint64(&output_message, sentPtr);
 pq_sendint64(&output_message, GetCurrentTimestamp());
 pq_sendbyte(&output_message, requestReply ? 1 : 0);


 pq_putmessage_noblock('d', output_message.data, output_message.len);
}

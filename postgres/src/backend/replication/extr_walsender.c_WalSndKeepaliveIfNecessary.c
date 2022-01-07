
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TimestampTz ;


 scalar_t__ TimestampTzPlusMilliseconds (scalar_t__,int) ;
 int WalSndKeepalive (int) ;
 int WalSndShutdown () ;
 scalar_t__ last_processing ;
 scalar_t__ last_reply_timestamp ;
 scalar_t__ pq_flush_if_writable () ;
 int waiting_for_ping_response ;
 int wal_sender_timeout ;

__attribute__((used)) static void
WalSndKeepaliveIfNecessary(void)
{
 TimestampTz ping_time;





 if (wal_sender_timeout <= 0 || last_reply_timestamp <= 0)
  return;

 if (waiting_for_ping_response)
  return;






 ping_time = TimestampTzPlusMilliseconds(last_reply_timestamp,
           wal_sender_timeout / 2);
 if (last_processing >= ping_time)
 {
  WalSndKeepalive(1);
  waiting_for_ping_response = 1;


  if (pq_flush_if_writable() != 0)
   WalSndShutdown();
 }
}

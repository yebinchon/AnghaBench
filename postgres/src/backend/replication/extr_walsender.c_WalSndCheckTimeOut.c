
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TimestampTz ;


 int COMMERROR ;
 scalar_t__ TimestampTzPlusMilliseconds (scalar_t__,scalar_t__) ;
 int WalSndShutdown () ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ last_processing ;
 scalar_t__ last_reply_timestamp ;
 scalar_t__ wal_sender_timeout ;

__attribute__((used)) static void
WalSndCheckTimeOut(void)
{
 TimestampTz timeout;


 if (last_reply_timestamp <= 0)
  return;

 timeout = TimestampTzPlusMilliseconds(last_reply_timestamp,
            wal_sender_timeout);

 if (wal_sender_timeout > 0 && last_processing >= timeout)
 {





  ereport(COMMERROR,
    (errmsg("terminating walsender process due to replication timeout")));

  WalSndShutdown();
 }
}

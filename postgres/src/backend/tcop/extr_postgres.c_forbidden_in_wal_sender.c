
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 scalar_t__ am_walsender ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
forbidden_in_wal_sender(char firstchar)
{
 if (am_walsender)
 {
  if (firstchar == 'F')
   ereport(ERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("fastpath function calls not supported in a replication connection")));
  else
   ereport(ERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("extended query protocol not supported in a replication connection")));
 }
}

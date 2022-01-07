
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYNC_REP_NO_WAIT ;
 int SYNC_REP_WAIT_APPLY ;
 int SYNC_REP_WAIT_FLUSH ;
 int SYNC_REP_WAIT_WRITE ;
 int SyncRepWaitMode ;

void
assign_synchronous_commit(int newval, void *extra)
{
 switch (newval)
 {
  case 128:
   SyncRepWaitMode = SYNC_REP_WAIT_WRITE;
   break;
  case 129:
   SyncRepWaitMode = SYNC_REP_WAIT_FLUSH;
   break;
  case 130:
   SyncRepWaitMode = SYNC_REP_WAIT_APPLY;
   break;
  default:
   SyncRepWaitMode = SYNC_REP_NO_WAIT;
   break;
 }
}

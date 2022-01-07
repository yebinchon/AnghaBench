
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
typedef int (* WalSndSendDataCallback ) () ;
struct TYPE_2__ {scalar_t__ flush; scalar_t__ write; } ;


 int DestRemote ;
 int EndCommand (char*,int ) ;
 TYPE_1__* MyWalSnd ;
 scalar_t__ WalSndCaughtUp ;
 int WalSndKeepalive (int) ;
 scalar_t__ XLogRecPtrIsInvalid (scalar_t__) ;
 int pq_flush () ;
 int pq_is_send_pending () ;
 int proc_exit (int ) ;
 scalar_t__ sentPtr ;
 int waiting_for_ping_response ;

__attribute__((used)) static void
WalSndDone(WalSndSendDataCallback send_data)
{
 XLogRecPtr replicatedPtr;


 send_data();






 replicatedPtr = XLogRecPtrIsInvalid(MyWalSnd->flush) ?
  MyWalSnd->write : MyWalSnd->flush;

 if (WalSndCaughtUp && sentPtr == replicatedPtr &&
  !pq_is_send_pending())
 {

  EndCommand("COPY 0", DestRemote);
  pq_flush();

  proc_exit(0);
 }
 if (!waiting_for_ping_response)
 {
  WalSndKeepalive(1);
  waiting_for_ping_response = 1;
 }
}

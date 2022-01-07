
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sock; } ;


 int AddWaitEventToSet (int ,int ,int,int *,int *) ;
 int COMMERROR ;
 int CreateWaitEventSet (int ,int) ;
 int DoingCopyOut ;
 int FeBeWaitSet ;
 int MemoryContextAlloc (int ,int ) ;
 int * MyLatch ;
 TYPE_1__* MyProcPort ;
 int PQ_SEND_BUFFER_SIZE ;
 int PqCommBusy ;
 int PqCommReadingMsg ;
 scalar_t__ PqRecvLength ;
 scalar_t__ PqRecvPointer ;
 int PqSendBuffer ;
 int PqSendBufferSize ;
 scalar_t__ PqSendPointer ;
 scalar_t__ PqSendStart ;
 int TopMemoryContext ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WL_SOCKET_WRITEABLE ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int on_proc_exit (int ,int ) ;
 int pg_set_noblock (int) ;
 int socket_close ;

void
pq_init(void)
{

 PqSendBufferSize = PQ_SEND_BUFFER_SIZE;
 PqSendBuffer = MemoryContextAlloc(TopMemoryContext, PqSendBufferSize);
 PqSendPointer = PqSendStart = PqRecvPointer = PqRecvLength = 0;
 PqCommBusy = 0;
 PqCommReadingMsg = 0;
 DoingCopyOut = 0;


 on_proc_exit(socket_close, 0);
 if (!pg_set_noblock(MyProcPort->sock))
  ereport(COMMERROR,
    (errmsg("could not set socket to nonblocking mode: %m")));


 FeBeWaitSet = CreateWaitEventSet(TopMemoryContext, 3);
 AddWaitEventToSet(FeBeWaitSet, WL_SOCKET_WRITEABLE, MyProcPort->sock,
       ((void*)0), ((void*)0));
 AddWaitEventToSet(FeBeWaitSet, WL_LATCH_SET, -1, MyLatch, ((void*)0));
 AddWaitEventToSet(FeBeWaitSet, WL_POSTMASTER_DEATH, -1, ((void*)0), ((void*)0));
}

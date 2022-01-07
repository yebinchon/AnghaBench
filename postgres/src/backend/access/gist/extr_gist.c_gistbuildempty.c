
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Buffer ;


 int BUFFER_LOCK_EXCLUSIVE ;
 int END_CRIT_SECTION () ;
 int F_LEAF ;
 int GISTInitBuffer (int ,int ) ;
 int INIT_FORKNUM ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int P_NEW ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int ,int ,int *) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int log_newpage_buffer (int ,int) ;

void
gistbuildempty(Relation index)
{
 Buffer buffer;


 buffer = ReadBufferExtended(index, INIT_FORKNUM, P_NEW, RBM_NORMAL, ((void*)0));
 LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);


 START_CRIT_SECTION();
 GISTInitBuffer(buffer, F_LEAF);
 MarkBufferDirty(buffer);
 log_newpage_buffer(buffer, 1);
 END_CRIT_SECTION();


 UnlockReleaseBuffer(buffer);
}

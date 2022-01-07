
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Buffer ;


 int BUFFER_LOCK_EXCLUSIVE ;
 int END_CRIT_SECTION () ;
 int GIN_LEAF ;
 int GinInitBuffer (int ,int ) ;
 int GinInitMetabuffer (int ) ;
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
ginbuildempty(Relation index)
{
 Buffer RootBuffer,
    MetaBuffer;


 MetaBuffer =
  ReadBufferExtended(index, INIT_FORKNUM, P_NEW, RBM_NORMAL, ((void*)0));
 LockBuffer(MetaBuffer, BUFFER_LOCK_EXCLUSIVE);
 RootBuffer =
  ReadBufferExtended(index, INIT_FORKNUM, P_NEW, RBM_NORMAL, ((void*)0));
 LockBuffer(RootBuffer, BUFFER_LOCK_EXCLUSIVE);


 START_CRIT_SECTION();
 GinInitMetabuffer(MetaBuffer);
 MarkBufferDirty(MetaBuffer);
 log_newpage_buffer(MetaBuffer, 1);
 GinInitBuffer(RootBuffer, GIN_LEAF);
 MarkBufferDirty(RootBuffer);
 log_newpage_buffer(RootBuffer, 0);
 END_CRIT_SECTION();


 UnlockReleaseBuffer(MetaBuffer);
 UnlockReleaseBuffer(RootBuffer);
}

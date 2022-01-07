
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Buffer ;


 int BRIN_CURRENT_VERSION ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BrinGetPagesPerRange (int ) ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int INIT_FORKNUM ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int P_NEW ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int ,int ,int *) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int brin_metapage_init (int ,int ,int ) ;
 int log_newpage_buffer (int ,int) ;

void
brinbuildempty(Relation index)
{
 Buffer metabuf;


 metabuf =
  ReadBufferExtended(index, INIT_FORKNUM, P_NEW, RBM_NORMAL, ((void*)0));
 LockBuffer(metabuf, BUFFER_LOCK_EXCLUSIVE);


 START_CRIT_SECTION();
 brin_metapage_init(BufferGetPage(metabuf), BrinGetPagesPerRange(index),
        BRIN_CURRENT_VERSION);
 MarkBufferDirty(metabuf);
 log_newpage_buffer(metabuf, 1);
 END_CRIT_SECTION();

 UnlockReleaseBuffer(metabuf);
}

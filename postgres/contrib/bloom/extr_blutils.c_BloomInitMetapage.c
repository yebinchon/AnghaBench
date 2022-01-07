
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Page ;
typedef int GenericXLogState ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BLOOM_METAPAGE_BLKNO ;
 int BloomFillMetapage (int ,int ) ;
 int BloomNewBuffer (int ) ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int GENERIC_XLOG_FULL_IMAGE ;
 int GenericXLogFinish (int *) ;
 int GenericXLogRegisterBuffer (int *,int ,int ) ;
 int * GenericXLogStart (int ) ;
 int UnlockReleaseBuffer (int ) ;

void
BloomInitMetapage(Relation index)
{
 Buffer metaBuffer;
 Page metaPage;
 GenericXLogState *state;





 metaBuffer = BloomNewBuffer(index);
 Assert(BufferGetBlockNumber(metaBuffer) == BLOOM_METAPAGE_BLKNO);


 state = GenericXLogStart(index);
 metaPage = GenericXLogRegisterBuffer(state, metaBuffer,
           GENERIC_XLOG_FULL_IMAGE);
 BloomFillMetapage(index, metaPage);
 GenericXLogFinish(state);

 UnlockReleaseBuffer(metaBuffer);
}

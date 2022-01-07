
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgstattuple_type ;
typedef int Relation ;
typedef int Page ;
typedef int BufferAccessStrategy ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 int FirstOffsetNumber ;
 int GIST_SHARE ;
 scalar_t__ GistPageIsLeaf (int ) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int PageGetMaxOffsetNumber (int ) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int ,int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int gistcheckpage (int ,int ) ;
 int pgstat_index_page (int *,int ,int ,int ) ;

__attribute__((used)) static void
pgstat_gist_page(pgstattuple_type *stat, Relation rel, BlockNumber blkno,
     BufferAccessStrategy bstrategy)
{
 Buffer buf;
 Page page;

 buf = ReadBufferExtended(rel, MAIN_FORKNUM, blkno, RBM_NORMAL, bstrategy);
 LockBuffer(buf, GIST_SHARE);
 gistcheckpage(rel, buf);
 page = BufferGetPage(buf);

 if (GistPageIsLeaf(page))
 {
  pgstat_index_page(stat, page, FirstOffsetNumber,
        PageGetMaxOffsetNumber(page));
 }
 else
 {

 }

 UnlockReleaseBuffer(buf);
}

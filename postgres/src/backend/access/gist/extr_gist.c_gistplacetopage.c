
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_22__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_27__ {void* buf; TYPE_3__* downlink; } ;
struct TYPE_26__ {int t_tid; } ;
struct TYPE_23__ {scalar_t__ blkno; int num; } ;
struct TYPE_25__ {void* buffer; struct TYPE_25__* next; void* page; TYPE_1__ block; scalar_t__ list; TYPE_3__* itup; int lenlist; } ;
struct TYPE_24__ {scalar_t__ rightlink; int flags; } ;
typedef TYPE_2__ SplitedPageLayout ;
typedef int Size ;
typedef int Relation ;
typedef void* Page ;
typedef int OffsetNumber ;
typedef int List ;
typedef int Item ;
typedef TYPE_3__* IndexTuple ;
typedef int GistNSN ;
typedef int GISTSTATE ;
typedef TYPE_4__ GISTPageSplitInfo ;
typedef void* Buffer ;
typedef scalar_t__ BlockNumber ;


 void* BufferGetBlockNumber (void*) ;
 void* BufferGetPage (void*) ;
 scalar_t__ BufferIsValid (void*) ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int F_LEAF ;
 int FirstOffsetNumber ;
 int GISTInitBuffer (void*,int ) ;
 int GIST_MAX_SPLIT_PAGES ;
 scalar_t__ GIST_ROOT_BLKNO ;
 int GistBuildLSN ;
 int GistClearFollowRight (void*) ;
 scalar_t__ GistFollowRight (void*) ;
 int GistMarkFollowRight (void*) ;
 int GistPageGetNSN (void*) ;
 TYPE_22__* GistPageGetOpaque (void*) ;
 scalar_t__ GistPageHasGarbage (void*) ;
 scalar_t__ GistPageIsLeaf (void*) ;
 int GistPageSetNSN (void*,int ) ;
 int GistTupleSetValid (TYPE_3__*) ;
 int IndexTupleSize (TYPE_3__*) ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ ItemPointerEquals (int *,int *) ;
 int ItemPointerSetBlockNumber (int *,scalar_t__) ;
 int MarkBufferDirty (void*) ;
 int * NIL ;
 scalar_t__ OffsetNumberIsValid (int) ;
 scalar_t__ PageAddItem (void*,int ,int ,int,int,int) ;
 void* PageGetTempPageCopySpecial (void*) ;
 int PageIndexTupleDelete (void*,int) ;
 int PageIndexTupleOverwrite (void*,int,int ,int ) ;
 int PageRestoreTempPage (void*,void*) ;
 int PageSetLSN (void*,int ) ;
 int PredicateLockPageSplit (int ,void*,void*) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (void*) ;
 int XLogEnsureRecordSpace (int,int) ;
 int elog (int ,char*,...) ;
 int gistGetFakeLSN (int ) ;
 void* gistNewBuffer (int ) ;
 TYPE_2__* gistSplit (int ,void*,TYPE_3__**,int,int *) ;
 int gistXLogSplit (int,TYPE_2__*,scalar_t__,int ,void*,int) ;
 int gistXLogUpdate (void*,int*,int,TYPE_3__**,int,void*) ;
 TYPE_3__** gistextractpage (void*,int*) ;
 int gistfillbuffer (void*,TYPE_3__**,int,scalar_t__) ;
 scalar_t__ gistfillitupvec (TYPE_3__**,int,int *) ;
 TYPE_3__** gistjoinvector (TYPE_3__**,int*,TYPE_3__**,int) ;
 int gistnospace (void*,TYPE_3__**,int,int,int ) ;
 int gistprunepage (int ,void*,void*,int ) ;
 int * lappend (int *,TYPE_4__*) ;
 int memmove (TYPE_3__**,TYPE_3__**,int) ;
 void* palloc (int) ;

bool
gistplacetopage(Relation rel, Size freespace, GISTSTATE *giststate,
    Buffer buffer,
    IndexTuple *itup, int ntup, OffsetNumber oldoffnum,
    BlockNumber *newblkno,
    Buffer leftchildbuf,
    List **splitinfo,
    bool markfollowright,
    Relation heapRel,
    bool is_build)
{
 BlockNumber blkno = BufferGetBlockNumber(buffer);
 Page page = BufferGetPage(buffer);
 bool is_leaf = (GistPageIsLeaf(page)) ? 1 : 0;
 XLogRecPtr recptr;
 int i;
 bool is_split;
 if (GistFollowRight(page))
  elog(ERROR, "concurrent GiST page split was incomplete");

 *splitinfo = NIL;
 is_split = gistnospace(page, itup, ntup, oldoffnum, freespace);





 if (is_split && GistPageIsLeaf(page) && GistPageHasGarbage(page))
 {
  gistprunepage(rel, page, buffer, heapRel);
  is_split = gistnospace(page, itup, ntup, oldoffnum, freespace);
 }

 if (is_split)
 {

  IndexTuple *itvec;
  int tlen;
  SplitedPageLayout *dist = ((void*)0),
       *ptr;
  BlockNumber oldrlink = InvalidBlockNumber;
  GistNSN oldnsn = 0;
  SplitedPageLayout rootpg;
  bool is_rootsplit;
  int npage;

  is_rootsplit = (blkno == GIST_ROOT_BLKNO);





  itvec = gistextractpage(page, &tlen);
  if (OffsetNumberIsValid(oldoffnum))
  {

   int pos = oldoffnum - FirstOffsetNumber;

   tlen--;
   if (pos != tlen)
    memmove(itvec + pos, itvec + pos + 1, sizeof(IndexTuple) * (tlen - pos));
  }
  itvec = gistjoinvector(itvec, &tlen, itup, ntup);
  dist = gistSplit(rel, page, itvec, tlen, giststate);




  npage = 0;
  for (ptr = dist; ptr; ptr = ptr->next)
   npage++;

  if (is_rootsplit)
   npage++;
  if (npage > GIST_MAX_SPLIT_PAGES)
   elog(ERROR, "GiST page split into too many halves (%d, maximum %d)",
     npage, GIST_MAX_SPLIT_PAGES);
  ptr = dist;
  if (!is_rootsplit)
  {

   oldrlink = GistPageGetOpaque(page)->rightlink;
   oldnsn = GistPageGetNSN(page);

   dist->buffer = buffer;
   dist->block.blkno = BufferGetBlockNumber(buffer);
   dist->page = PageGetTempPageCopySpecial(BufferGetPage(buffer));


   GistPageGetOpaque(dist->page)->flags = (is_leaf) ? F_LEAF : 0;

   ptr = ptr->next;
  }
  for (; ptr; ptr = ptr->next)
  {

   ptr->buffer = gistNewBuffer(rel);
   GISTInitBuffer(ptr->buffer, (is_leaf) ? F_LEAF : 0);
   ptr->page = BufferGetPage(ptr->buffer);
   ptr->block.blkno = BufferGetBlockNumber(ptr->buffer);
   PredicateLockPageSplit(rel,
           BufferGetBlockNumber(buffer),
           BufferGetBlockNumber(ptr->buffer));
  }





  for (ptr = dist; ptr; ptr = ptr->next)
  {
   ItemPointerSetBlockNumber(&(ptr->itup->t_tid), ptr->block.blkno);
   GistTupleSetValid(ptr->itup);
  }






  if (is_rootsplit)
  {
   IndexTuple *downlinks;
   int ndownlinks = 0;
   int i;

   rootpg.buffer = buffer;
   rootpg.page = PageGetTempPageCopySpecial(BufferGetPage(rootpg.buffer));
   GistPageGetOpaque(rootpg.page)->flags = 0;


   for (ptr = dist; ptr; ptr = ptr->next)
    ndownlinks++;
   downlinks = palloc(sizeof(IndexTuple) * ndownlinks);
   for (i = 0, ptr = dist; ptr; ptr = ptr->next)
    downlinks[i++] = ptr->itup;

   rootpg.block.blkno = GIST_ROOT_BLKNO;
   rootpg.block.num = ndownlinks;
   rootpg.list = gistfillitupvec(downlinks, ndownlinks,
            &(rootpg.lenlist));
   rootpg.itup = ((void*)0);

   rootpg.next = dist;
   dist = &rootpg;
  }
  else
  {

   for (ptr = dist; ptr; ptr = ptr->next)
   {
    GISTPageSplitInfo *si = palloc(sizeof(GISTPageSplitInfo));

    si->buf = ptr->buffer;
    si->downlink = ptr->itup;
    *splitinfo = lappend(*splitinfo, si);
   }
  }





  for (ptr = dist; ptr; ptr = ptr->next)
  {
   char *data = (char *) (ptr->list);

   for (i = 0; i < ptr->block.num; i++)
   {
    IndexTuple thistup = (IndexTuple) data;

    if (PageAddItem(ptr->page, (Item) data, IndexTupleSize(thistup), i + FirstOffsetNumber, 0, 0) == InvalidOffsetNumber)
     elog(ERROR, "failed to add item to index page in \"%s\"", RelationGetRelationName(rel));





    if (newblkno && ItemPointerEquals(&thistup->t_tid, &(*itup)->t_tid))
     *newblkno = ptr->block.blkno;

    data += IndexTupleSize(thistup);
   }


   if (ptr->next && ptr->block.blkno != GIST_ROOT_BLKNO)
    GistPageGetOpaque(ptr->page)->rightlink =
     ptr->next->block.blkno;
   else
    GistPageGetOpaque(ptr->page)->rightlink = oldrlink;
   if (ptr->next && !is_rootsplit && markfollowright)
    GistMarkFollowRight(ptr->page);
   else
    GistClearFollowRight(ptr->page);






   GistPageSetNSN(ptr->page, oldnsn);
  }






  if (!is_build && RelationNeedsWAL(rel))
   XLogEnsureRecordSpace(npage, 1 + npage * 2);

  START_CRIT_SECTION();





  for (ptr = dist; ptr; ptr = ptr->next)
   MarkBufferDirty(ptr->buffer);
  if (BufferIsValid(leftchildbuf))
   MarkBufferDirty(leftchildbuf);





  PageRestoreTempPage(dist->page, BufferGetPage(dist->buffer));
  dist->page = BufferGetPage(dist->buffer);
  if (is_build)
   recptr = GistBuildLSN;
  else
  {
   if (RelationNeedsWAL(rel))
    recptr = gistXLogSplit(is_leaf,
            dist, oldrlink, oldnsn, leftchildbuf,
            markfollowright);
   else
    recptr = gistGetFakeLSN(rel);
  }

  for (ptr = dist; ptr; ptr = ptr->next)
   PageSetLSN(ptr->page, recptr);
  if (is_rootsplit)
  {
   for (ptr = dist->next; ptr; ptr = ptr->next)
    UnlockReleaseBuffer(ptr->buffer);
  }
 }
 else
 {



  START_CRIT_SECTION();





  if (OffsetNumberIsValid(oldoffnum))
  {
   if (ntup == 1)
   {

    if (!PageIndexTupleOverwrite(page, oldoffnum, (Item) *itup,
            IndexTupleSize(*itup)))
     elog(ERROR, "failed to add item to index page in \"%s\"",
       RelationGetRelationName(rel));
   }
   else
   {

    PageIndexTupleDelete(page, oldoffnum);
    gistfillbuffer(page, itup, ntup, InvalidOffsetNumber);
   }
  }
  else
  {

   gistfillbuffer(page, itup, ntup, InvalidOffsetNumber);
  }

  MarkBufferDirty(buffer);

  if (BufferIsValid(leftchildbuf))
   MarkBufferDirty(leftchildbuf);

  if (is_build)
   recptr = GistBuildLSN;
  else
  {
   if (RelationNeedsWAL(rel))
   {
    OffsetNumber ndeloffs = 0,
       deloffs[1];

    if (OffsetNumberIsValid(oldoffnum))
    {
     deloffs[0] = oldoffnum;
     ndeloffs = 1;
    }

    recptr = gistXLogUpdate(buffer,
          deloffs, ndeloffs, itup, ntup,
          leftchildbuf);
   }
   else
    recptr = gistGetFakeLSN(rel);
  }
  PageSetLSN(page, recptr);

  if (newblkno)
   *newblkno = blkno;
 }
 if (BufferIsValid(leftchildbuf))
 {
  Page leftpg = BufferGetPage(leftchildbuf);

  GistPageSetNSN(leftpg, recptr);
  GistClearFollowRight(leftpg);

  PageSetLSN(leftpg, recptr);
 }

 END_CRIT_SECTION();

 return is_split;
}

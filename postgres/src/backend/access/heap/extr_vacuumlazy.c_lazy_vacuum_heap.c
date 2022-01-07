
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_dead_tuples; int * dead_tuples; } ;
typedef int Size ;
typedef int Relation ;
typedef int Page ;
typedef int PGRUsage ;
typedef TYPE_1__ LVRelStats ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ConditionalLockBufferForCleanup (int ) ;
 int InvalidBuffer ;
 int ItemPointerGetBlockNumber (int *) ;
 int MAIN_FORKNUM ;
 int PageGetHeapFreeSpace (int ) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int ,int ,int ) ;
 int RecordPageWithFreeSpace (int ,int ,int ) ;
 int RelationGetRelationName (int ) ;
 int ReleaseBuffer (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int elevel ;
 int ereport (int ,int ) ;
 int errdetail_internal (char*,int ) ;
 int errmsg (char*,int ,int,int) ;
 int lazy_vacuum_page (int ,int ,int ,int,TYPE_1__*,int *) ;
 int pg_rusage_init (int *) ;
 int pg_rusage_show (int *) ;
 int vac_strategy ;
 int vacuum_delay_point () ;

__attribute__((used)) static void
lazy_vacuum_heap(Relation onerel, LVRelStats *vacrelstats)
{
 int tupindex;
 int npages;
 PGRUsage ru0;
 Buffer vmbuffer = InvalidBuffer;

 pg_rusage_init(&ru0);
 npages = 0;

 tupindex = 0;
 while (tupindex < vacrelstats->num_dead_tuples)
 {
  BlockNumber tblk;
  Buffer buf;
  Page page;
  Size freespace;

  vacuum_delay_point();

  tblk = ItemPointerGetBlockNumber(&vacrelstats->dead_tuples[tupindex]);
  buf = ReadBufferExtended(onerel, MAIN_FORKNUM, tblk, RBM_NORMAL,
         vac_strategy);
  if (!ConditionalLockBufferForCleanup(buf))
  {
   ReleaseBuffer(buf);
   ++tupindex;
   continue;
  }
  tupindex = lazy_vacuum_page(onerel, tblk, buf, tupindex, vacrelstats,
         &vmbuffer);


  page = BufferGetPage(buf);
  freespace = PageGetHeapFreeSpace(page);

  UnlockReleaseBuffer(buf);
  RecordPageWithFreeSpace(onerel, tblk, freespace);
  npages++;
 }

 if (BufferIsValid(vmbuffer))
 {
  ReleaseBuffer(vmbuffer);
  vmbuffer = InvalidBuffer;
 }

 ereport(elevel,
   (errmsg("\"%s\": removed %d row versions in %d pages",
     RelationGetRelationName(onerel),
     tupindex, npages),
    errdetail_internal("%s", pg_rusage_show(&ru0))));
}

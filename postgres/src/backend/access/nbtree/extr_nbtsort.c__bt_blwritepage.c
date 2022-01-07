
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rd_smgr; int rd_node; } ;
struct TYPE_4__ {TYPE_3__* index; int btws_pages_written; scalar_t__ btws_zeropage; scalar_t__ btws_use_wal; } ;
typedef scalar_t__ Page ;
typedef int BlockNumber ;
typedef TYPE_1__ BTWriteState ;


 int BLCKSZ ;
 int MAIN_FORKNUM ;
 int PageSetChecksumInplace (scalar_t__,int ) ;
 int RelationOpenSmgr (TYPE_3__*) ;
 int log_newpage (int *,int ,int ,scalar_t__,int) ;
 scalar_t__ palloc0 (int ) ;
 int pfree (scalar_t__) ;
 int smgrextend (int ,int ,int ,char*,int) ;
 int smgrwrite (int ,int ,int ,char*,int) ;

__attribute__((used)) static void
_bt_blwritepage(BTWriteState *wstate, Page page, BlockNumber blkno)
{

 RelationOpenSmgr(wstate->index);


 if (wstate->btws_use_wal)
 {

  log_newpage(&wstate->index->rd_node, MAIN_FORKNUM, blkno, page, 1);
 }
 while (blkno > wstate->btws_pages_written)
 {
  if (!wstate->btws_zeropage)
   wstate->btws_zeropage = (Page) palloc0(BLCKSZ);

  smgrextend(wstate->index->rd_smgr, MAIN_FORKNUM,
       wstate->btws_pages_written++,
       (char *) wstate->btws_zeropage,
       1);
 }

 PageSetChecksumInplace(page, blkno);





 if (blkno == wstate->btws_pages_written)
 {

  smgrextend(wstate->index->rd_smgr, MAIN_FORKNUM, blkno,
       (char *) page, 1);
  wstate->btws_pages_written++;
 }
 else
 {

  smgrwrite(wstate->index->rd_smgr, MAIN_FORKNUM, blkno,
      (char *) page, 1);
 }

 pfree(page);
}

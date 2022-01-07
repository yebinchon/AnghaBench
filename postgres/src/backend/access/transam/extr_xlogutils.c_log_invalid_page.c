
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int blkno; int forkno; int node; } ;
typedef TYPE_1__ xl_invalid_page_key ;
struct TYPE_7__ {int present; } ;
typedef TYPE_2__ xl_invalid_page ;
typedef int ctl ;
struct TYPE_8__ {int keysize; int entrysize; } ;
typedef int RelFileNode ;
typedef TYPE_3__ HASHCTL ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 scalar_t__ DEBUG1 ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int PANIC ;
 scalar_t__ WARNING ;
 scalar_t__ client_min_messages ;
 int elog (int ,char*) ;
 int * hash_create (char*,int,TYPE_3__*,int) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 int * invalid_page_tab ;
 scalar_t__ log_min_messages ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ reachedConsistency ;
 int report_invalid_page (scalar_t__,int ,int ,int ,int) ;

__attribute__((used)) static void
log_invalid_page(RelFileNode node, ForkNumber forkno, BlockNumber blkno,
     bool present)
{
 xl_invalid_page_key key;
 xl_invalid_page *hentry;
 bool found;
 if (reachedConsistency)
 {
  report_invalid_page(WARNING, node, forkno, blkno, present);
  elog(PANIC, "WAL contains references to invalid pages");
 }






 if (log_min_messages <= DEBUG1 || client_min_messages <= DEBUG1)
  report_invalid_page(DEBUG1, node, forkno, blkno, present);

 if (invalid_page_tab == ((void*)0))
 {

  HASHCTL ctl;

  memset(&ctl, 0, sizeof(ctl));
  ctl.keysize = sizeof(xl_invalid_page_key);
  ctl.entrysize = sizeof(xl_invalid_page);

  invalid_page_tab = hash_create("XLOG invalid-page table",
            100,
            &ctl,
            HASH_ELEM | HASH_BLOBS);
 }


 key.node = node;
 key.forkno = forkno;
 key.blkno = blkno;
 hentry = (xl_invalid_page *)
  hash_search(invalid_page_tab, (void *) &key, HASH_ENTER, &found);

 if (!found)
 {

  hentry->present = present;
 }
 else
 {

 }
}

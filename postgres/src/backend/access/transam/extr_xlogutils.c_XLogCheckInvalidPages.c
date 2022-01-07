
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blkno; int forkno; int node; } ;
struct TYPE_4__ {int present; TYPE_1__ key; } ;
typedef TYPE_2__ xl_invalid_page ;
typedef int HASH_SEQ_STATUS ;


 int PANIC ;
 int WARNING ;
 int elog (int ,char*) ;
 int hash_destroy (int *) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int * invalid_page_tab ;
 int report_invalid_page (int ,int ,int ,int ,int ) ;

void
XLogCheckInvalidPages(void)
{
 HASH_SEQ_STATUS status;
 xl_invalid_page *hentry;
 bool foundone = 0;

 if (invalid_page_tab == ((void*)0))
  return;

 hash_seq_init(&status, invalid_page_tab);





 while ((hentry = (xl_invalid_page *) hash_seq_search(&status)) != ((void*)0))
 {
  report_invalid_page(WARNING, hentry->key.node, hentry->key.forkno,
       hentry->key.blkno, hentry->present);
  foundone = 1;
 }

 if (foundone)
  elog(PANIC, "WAL contains references to invalid pages");

 hash_destroy(invalid_page_tab);
 invalid_page_tab = ((void*)0);
}

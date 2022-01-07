
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ section; int tag; int desc; int dumpId; struct TYPE_13__* next; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_14__ {int * currTableAm; int * currTablespace; int * currSchema; int * currUser; int public; TYPE_1__* toc; scalar_t__ restorePass; } ;
typedef TYPE_2__ ArchiveHandle ;


 int DisconnectDatabase (int *) ;
 scalar_t__ RESTORE_PASS_MAIN ;
 scalar_t__ SECTION_DATA ;
 scalar_t__ SECTION_POST_DATA ;
 scalar_t__ SECTION_PRE_DATA ;
 scalar_t__ _tocEntryRestorePass (TYPE_1__*) ;
 int fix_dependencies (TYPE_2__*) ;
 int free (int *) ;
 int pending_list_append (TYPE_1__*,TYPE_1__*) ;
 int pg_log_debug (char*) ;
 int pg_log_info (char*,int ,int ,int ) ;
 int reduce_dependencies (TYPE_2__*,TYPE_1__*,int *) ;
 int restore_toc_entry (TYPE_2__*,TYPE_1__*,int) ;

__attribute__((used)) static void
restore_toc_entries_prefork(ArchiveHandle *AH, TocEntry *pending_list)
{
 bool skipped_some;
 TocEntry *next_work_item;

 pg_log_debug("entering restore_toc_entries_prefork");


 fix_dependencies(AH);
 AH->restorePass = RESTORE_PASS_MAIN;
 skipped_some = 0;
 for (next_work_item = AH->toc->next; next_work_item != AH->toc; next_work_item = next_work_item->next)
 {
  bool do_now = 1;

  if (next_work_item->section != SECTION_PRE_DATA)
  {

   if (next_work_item->section == SECTION_DATA ||
    next_work_item->section == SECTION_POST_DATA)
   {
    do_now = 0;
    skipped_some = 1;
   }
   else
   {






    if (skipped_some)
     do_now = 0;
   }
  }






  if (_tocEntryRestorePass(next_work_item) != RESTORE_PASS_MAIN)
   do_now = 0;

  if (do_now)
  {

   pg_log_info("processing item %d %s %s",
      next_work_item->dumpId,
      next_work_item->desc, next_work_item->tag);

   (void) restore_toc_entry(AH, next_work_item, 0);


   reduce_dependencies(AH, next_work_item, ((void*)0));
  }
  else
  {

   pending_list_append(pending_list, next_work_item);
  }
 }






 DisconnectDatabase(&AH->public);


 if (AH->currUser)
  free(AH->currUser);
 AH->currUser = ((void*)0);
 if (AH->currSchema)
  free(AH->currSchema);
 AH->currSchema = ((void*)0);
 if (AH->currTablespace)
  free(AH->currTablespace);
 AH->currTablespace = ((void*)0);
 if (AH->currTableAm)
  free(AH->currTableAm);
 AH->currTableAm = ((void*)0);
}

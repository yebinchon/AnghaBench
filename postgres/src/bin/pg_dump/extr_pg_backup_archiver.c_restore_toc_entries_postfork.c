
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int tag; int desc; int dumpId; struct TYPE_11__* pending_next; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_10__ {TYPE_3__* ropt; } ;
struct TYPE_13__ {TYPE_1__ public; } ;
struct TYPE_12__ {int promptPassword; int username; int pgport; int pghost; int dbname; } ;
typedef TYPE_3__ RestoreOptions ;
typedef TYPE_4__ ArchiveHandle ;
typedef int Archive ;


 int ConnectDatabase (int *,int ,int ,int ,int ,int ) ;
 int _doSetFixedOutputState (TYPE_4__*) ;
 int pg_log_debug (char*) ;
 int pg_log_info (char*,int ,int ,int ) ;
 int restore_toc_entry (TYPE_4__*,TYPE_2__*,int) ;

__attribute__((used)) static void
restore_toc_entries_postfork(ArchiveHandle *AH, TocEntry *pending_list)
{
 RestoreOptions *ropt = AH->public.ropt;
 TocEntry *te;

 pg_log_debug("entering restore_toc_entries_postfork");




 ConnectDatabase((Archive *) AH, ropt->dbname,
     ropt->pghost, ropt->pgport, ropt->username,
     ropt->promptPassword);


 _doSetFixedOutputState(AH);







 for (te = pending_list->pending_next; te != pending_list; te = te->pending_next)
 {
  pg_log_info("processing missed item %d %s %s",
     te->dumpId, te->desc, te->tag);
  (void) restore_toc_entry(AH, te, 0);
 }
}

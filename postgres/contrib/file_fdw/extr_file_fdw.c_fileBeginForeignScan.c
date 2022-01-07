
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {char* filename; int is_program; int cstate; int * options; } ;
struct TYPE_10__ {int fdw_private; } ;
struct TYPE_7__ {scalar_t__ plan; } ;
struct TYPE_8__ {int ss_currentRelation; TYPE_1__ ps; } ;
struct TYPE_9__ {void* fdw_state; TYPE_2__ ss; } ;
typedef int List ;
typedef TYPE_3__ ForeignScanState ;
typedef TYPE_4__ ForeignScan ;
typedef TYPE_5__ FileFdwExecutionState ;
typedef int CopyState ;


 int BeginCopyFrom (int *,int ,char*,int,int *,int ,int *) ;
 int EXEC_FLAG_EXPLAIN_ONLY ;
 int NIL ;
 int RelationGetRelid (int ) ;
 int fileGetOptions (int ,char**,int*,int **) ;
 int * list_concat (int *,int ) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
fileBeginForeignScan(ForeignScanState *node, int eflags)
{
 ForeignScan *plan = (ForeignScan *) node->ss.ps.plan;
 char *filename;
 bool is_program;
 List *options;
 CopyState cstate;
 FileFdwExecutionState *festate;




 if (eflags & EXEC_FLAG_EXPLAIN_ONLY)
  return;


 fileGetOptions(RelationGetRelid(node->ss.ss_currentRelation),
       &filename, &is_program, &options);


 options = list_concat(options, plan->fdw_private);





 cstate = BeginCopyFrom(((void*)0),
         node->ss.ss_currentRelation,
         filename,
         is_program,
         ((void*)0),
         NIL,
         options);





 festate = (FileFdwExecutionState *) palloc(sizeof(FileFdwExecutionState));
 festate->filename = filename;
 festate->is_program = is_program;
 festate->options = options;
 festate->cstate = cstate;

 node->fdw_state = (void *) festate;
}

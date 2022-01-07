
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int relationOids; int finalrtable; } ;
struct TYPE_8__ {scalar_t__ rtekind; int relid; void* securityQuals; void* colcollations; void* coltypmods; void* coltypes; void* values_lists; int * tablefunc; void* functions; void* joinaliasvars; int * subquery; int * tablesample; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ PlannerGlobal ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 scalar_t__ IS_SPECIAL_VARNO (int ) ;
 void* NIL ;
 scalar_t__ RTE_RELATION ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int lappend (int ,TYPE_1__*) ;
 int lappend_oid (int ,int ) ;
 int list_length (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
add_rte_to_flat_rtable(PlannerGlobal *glob, RangeTblEntry *rte)
{
 RangeTblEntry *newrte;


 newrte = (RangeTblEntry *) palloc(sizeof(RangeTblEntry));
 memcpy(newrte, rte, sizeof(RangeTblEntry));


 newrte->tablesample = ((void*)0);
 newrte->subquery = ((void*)0);
 newrte->joinaliasvars = NIL;
 newrte->functions = NIL;
 newrte->tablefunc = ((void*)0);
 newrte->values_lists = NIL;
 newrte->coltypes = NIL;
 newrte->coltypmods = NIL;
 newrte->colcollations = NIL;
 newrte->securityQuals = NIL;

 glob->finalrtable = lappend(glob->finalrtable, newrte);






 if (IS_SPECIAL_VARNO(list_length(glob->finalrtable)))
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("too many range table entries")));
 if (newrte->rtekind == RTE_RELATION)
  glob->relationOids = lappend_oid(glob->relationOids, newrte->relid);
}

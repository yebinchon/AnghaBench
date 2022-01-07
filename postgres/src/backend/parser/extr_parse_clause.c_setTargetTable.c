
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int p_rtable; TYPE_2__* p_target_rangetblentry; int * p_target_relation; } ;
struct TYPE_15__ {int requiredPerms; } ;
struct TYPE_14__ {int alias; int relname; int * schemaname; } ;
typedef TYPE_1__ RangeVar ;
typedef TYPE_2__ RangeTblEntry ;
typedef TYPE_3__ ParseState ;
typedef int AclMode ;


 int Assert (int) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int NoLock ;
 int RowExclusiveLock ;
 int addRTEtoQuery (TYPE_3__*,TYPE_2__*,int,int,int) ;
 TYPE_2__* addRangeTableEntryForRelation (TYPE_3__*,int *,int ,int ,int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int list_length (int ) ;
 int * parserOpenTable (TYPE_3__*,TYPE_1__*,int ) ;
 TYPE_2__* rt_fetch (int,int ) ;
 scalar_t__ scanNameSpaceForENR (TYPE_3__*,int ) ;
 int table_close (int *,int ) ;

int
setTargetTable(ParseState *pstate, RangeVar *relation,
      bool inh, bool alsoSource, AclMode requiredPerms)
{
 RangeTblEntry *rte;
 int rtindex;





 if (relation->schemaname == ((void*)0) &&
  scanNameSpaceForENR(pstate, relation->relname))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("relation \"%s\" cannot be the target of a modifying statement",
      relation->relname)));


 if (pstate->p_target_relation != ((void*)0))
  table_close(pstate->p_target_relation, NoLock);
 pstate->p_target_relation = parserOpenTable(pstate, relation,
            RowExclusiveLock);




 rte = addRangeTableEntryForRelation(pstate, pstate->p_target_relation,
          RowExclusiveLock,
          relation->alias, inh, 0);
 pstate->p_target_rangetblentry = rte;


 rtindex = list_length(pstate->p_rtable);
 Assert(rte == rt_fetch(rtindex, pstate->p_rtable));
 rte->requiredPerms = requiredPerms;
 if (alsoSource)
  addRTEtoQuery(pstate, rte, 1, 1, 1);

 return rtindex;
}

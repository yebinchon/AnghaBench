
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* GetForeignRowMarkType ) (TYPE_1__*,int) ;} ;
struct TYPE_6__ {scalar_t__ rtekind; scalar_t__ relkind; int relid; } ;
typedef int RowMarkType ;
typedef TYPE_1__ RangeTblEntry ;
typedef int LockClauseStrength ;
typedef TYPE_2__ FdwRoutine ;


 int ERROR ;
 TYPE_2__* GetFdwRoutineByRelId (int ) ;





 scalar_t__ RELKIND_FOREIGN_TABLE ;
 int ROW_MARK_COPY ;
 int ROW_MARK_EXCLUSIVE ;
 int ROW_MARK_KEYSHARE ;
 int ROW_MARK_NOKEYEXCLUSIVE ;
 int ROW_MARK_REFERENCE ;
 int ROW_MARK_SHARE ;
 scalar_t__ RTE_RELATION ;
 int elog (int ,char*,int) ;
 int stub1 (TYPE_1__*,int) ;

RowMarkType
select_rowmark_type(RangeTblEntry *rte, LockClauseStrength strength)
{
 if (rte->rtekind != RTE_RELATION)
 {

  return ROW_MARK_COPY;
 }
 else if (rte->relkind == RELKIND_FOREIGN_TABLE)
 {

  FdwRoutine *fdwroutine = GetFdwRoutineByRelId(rte->relid);

  if (fdwroutine->GetForeignRowMarkType != ((void*)0))
   return fdwroutine->GetForeignRowMarkType(rte, strength);

  return ROW_MARK_COPY;
 }
 else
 {

  switch (strength)
  {
   case 128:





    return ROW_MARK_REFERENCE;
    break;
   case 132:
    return ROW_MARK_KEYSHARE;
    break;
   case 130:
    return ROW_MARK_SHARE;
    break;
   case 131:
    return ROW_MARK_NOKEYEXCLUSIVE;
    break;
   case 129:
    return ROW_MARK_EXCLUSIVE;
    break;
  }
  elog(ERROR, "unrecognized LockClauseStrength %d", (int) strength);
  return ROW_MARK_EXCLUSIVE;
 }
}

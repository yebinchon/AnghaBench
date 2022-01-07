
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int contype; int location; } ;
struct TYPE_6__ {void* fkconstraints; int pstate; int isforeign; void* ckconstraints; void* ixconstraints; int ispartitioned; } ;
typedef TYPE_1__ CreateStmtContext ;
typedef TYPE_2__ Constraint ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 void* lappend (void*,TYPE_2__*) ;
 int parser_errposition (int ,int ) ;

__attribute__((used)) static void
transformTableConstraint(CreateStmtContext *cxt, Constraint *constraint)
{
 switch (constraint->contype)
 {
  case 129:
   if (cxt->isforeign)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("primary key constraints are not supported on foreign tables"),
       parser_errposition(cxt->pstate,
           constraint->location)));
   cxt->ixconstraints = lappend(cxt->ixconstraints, constraint);
   break;

  case 128:
   if (cxt->isforeign)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("unique constraints are not supported on foreign tables"),
       parser_errposition(cxt->pstate,
           constraint->location)));
   cxt->ixconstraints = lappend(cxt->ixconstraints, constraint);
   break;

  case 133:
   if (cxt->isforeign)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("exclusion constraints are not supported on foreign tables"),
       parser_errposition(cxt->pstate,
           constraint->location)));
   if (cxt->ispartitioned)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("exclusion constraints are not supported on partitioned tables"),
       parser_errposition(cxt->pstate,
           constraint->location)));
   cxt->ixconstraints = lappend(cxt->ixconstraints, constraint);
   break;

  case 135:
   cxt->ckconstraints = lappend(cxt->ckconstraints, constraint);
   break;

  case 132:
   if (cxt->isforeign)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("foreign key constraints are not supported on foreign tables"),
       parser_errposition(cxt->pstate,
           constraint->location)));
   cxt->fkconstraints = lappend(cxt->fkconstraints, constraint);
   break;

  case 130:
  case 131:
  case 134:
  case 139:
  case 136:
  case 138:
  case 137:
   elog(ERROR, "invalid context for constraint type %d",
     constraint->contype);
   break;

  default:
   elog(ERROR, "unrecognized constraint type: %d",
     constraint->contype);
   break;
 }
}

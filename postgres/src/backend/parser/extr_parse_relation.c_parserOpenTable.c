
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int relname; scalar_t__ schemaname; int location; } ;
typedef int * Relation ;
typedef TYPE_1__ RangeVar ;
typedef int ParseState ;
typedef int ParseCallbackState ;


 int ERRCODE_UNDEFINED_TABLE ;
 int ERROR ;
 int cancel_parser_errposition_callback (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,...) ;
 scalar_t__ isFutureCTE (int *,int ) ;
 int setup_parser_errposition_callback (int *,int *,int ) ;
 int * table_openrv_extended (TYPE_1__ const*,int,int) ;

Relation
parserOpenTable(ParseState *pstate, const RangeVar *relation, int lockmode)
{
 Relation rel;
 ParseCallbackState pcbstate;

 setup_parser_errposition_callback(&pcbstate, pstate, relation->location);
 rel = table_openrv_extended(relation, lockmode, 1);
 if (rel == ((void*)0))
 {
  if (relation->schemaname)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_TABLE),
      errmsg("relation \"%s.%s\" does not exist",
       relation->schemaname, relation->relname)));
  else
  {






   if (isFutureCTE(pstate, relation->relname))
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_TABLE),
       errmsg("relation \"%s\" does not exist",
        relation->relname),
       errdetail("There is a WITH item named \"%s\", but it cannot be referenced from this part of the query.",
           relation->relname),
       errhint("Use WITH RECURSIVE, or re-order the WITH items to remove forward references.")));
   else
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_TABLE),
       errmsg("relation \"%s\" does not exist",
        relation->relname)));
  }
 }
 cancel_parser_errposition_callback(&pcbstate);
 return rel;
}

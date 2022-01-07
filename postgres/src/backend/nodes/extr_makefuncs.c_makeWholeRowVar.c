
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Var ;
struct TYPE_5__ {int rtekind; int functions; int funcordinality; int relid; } ;
struct TYPE_4__ {int * funcexpr; } ;
typedef TYPE_1__ RangeTblFunction ;
typedef TYPE_2__ RangeTblEntry ;
typedef int Oid ;
typedef int Node ;
typedef int Index ;


 int ERROR ;
 int InvalidAttrNumber ;
 int InvalidOid ;
 int OidIsValid (int ) ;
 int RECORDOID ;


 int elog (int ,char*,int ) ;
 int exprCollation (int *) ;
 int exprType (int *) ;
 int get_rel_type_id (int ) ;
 scalar_t__ linitial (int ) ;
 int list_length (int ) ;
 int * makeVar (int ,int,int ,int,int ,int ) ;
 int type_is_rowtype (int ) ;

Var *
makeWholeRowVar(RangeTblEntry *rte,
    Index varno,
    Index varlevelsup,
    bool allowScalar)
{
 Var *result;
 Oid toid;
 Node *fexpr;

 switch (rte->rtekind)
 {
  case 128:

   toid = get_rel_type_id(rte->relid);
   if (!OidIsValid(toid))
    elog(ERROR, "could not find type OID for relation %u",
      rte->relid);
   result = makeVar(varno,
        InvalidAttrNumber,
        toid,
        -1,
        InvalidOid,
        varlevelsup);
   break;

  case 129:






   if (rte->funcordinality || list_length(rte->functions) != 1)
   {

    result = makeVar(varno,
         InvalidAttrNumber,
         RECORDOID,
         -1,
         InvalidOid,
         varlevelsup);
    break;
   }

   fexpr = ((RangeTblFunction *) linitial(rte->functions))->funcexpr;
   toid = exprType(fexpr);
   if (type_is_rowtype(toid))
   {

    result = makeVar(varno,
         InvalidAttrNumber,
         toid,
         -1,
         InvalidOid,
         varlevelsup);
   }
   else if (allowScalar)
   {

    result = makeVar(varno,
         1,
         toid,
         -1,
         exprCollation(fexpr),
         varlevelsup);
   }
   else
   {

    result = makeVar(varno,
         InvalidAttrNumber,
         RECORDOID,
         -1,
         InvalidOid,
         varlevelsup);
   }
   break;

  default:







   result = makeVar(varno,
        InvalidAttrNumber,
        RECORDOID,
        -1,
        InvalidOid,
        varlevelsup);
   break;
 }

 return result;
}

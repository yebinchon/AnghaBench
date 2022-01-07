
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {int location; } ;
typedef TYPE_1__ Var ;
typedef int RangeTblEntry ;
typedef int ParseState ;
typedef int Oid ;


 int RTERangeTablePosn (int *,int *,int*) ;
 int get_rte_attribute_type (int *,int,int *,int *,int *) ;
 TYPE_1__* makeVar (int,int,int ,int ,int ,int) ;

Var *
make_var(ParseState *pstate, RangeTblEntry *rte, int attrno, int location)
{
 Var *result;
 int vnum,
    sublevels_up;
 Oid vartypeid;
 int32 type_mod;
 Oid varcollid;

 vnum = RTERangeTablePosn(pstate, rte, &sublevels_up);
 get_rte_attribute_type(rte, attrno, &vartypeid, &type_mod, &varcollid);
 result = makeVar(vnum, attrno, vartypeid, type_mod, varcollid, sublevels_up);
 result->location = location;
 return result;
}

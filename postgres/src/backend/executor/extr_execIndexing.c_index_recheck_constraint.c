
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * rd_indcollation; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef int Datum ;


 int DatumGetBool (int ) ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_1__*) ;
 int OidFunctionCall2Coll (int ,int ,int ,int ) ;

__attribute__((used)) static bool
index_recheck_constraint(Relation index, Oid *constr_procs,
       Datum *existing_values, bool *existing_isnull,
       Datum *new_values)
{
 int indnkeyatts = IndexRelationGetNumberOfKeyAttributes(index);
 int i;

 for (i = 0; i < indnkeyatts; i++)
 {

  if (existing_isnull[i])
   return 0;

  if (!DatumGetBool(OidFunctionCall2Coll(constr_procs[i],
              index->rd_indcollation[i],
              existing_values[i],
              new_values[i])))
   return 0;
 }

 return 1;
}

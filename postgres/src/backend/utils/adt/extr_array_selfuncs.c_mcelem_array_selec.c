
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int float4 ;
struct TYPE_6__ {int typalign; int typbyval; int typlen; int type_id; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef double Selectivity ;
typedef int Oid ;
typedef int Datum ;
typedef int ArrayType ;


 int ERROR ;
 int OID_ARRAY_CONTAINED_OP ;
 int OID_ARRAY_CONTAINS_OP ;
 int OID_ARRAY_OVERLAP_OP ;
 int deconstruct_array (int *,int ,int ,int ,int ,int**,int**,int*) ;
 int element_compare ;
 int elog (int ,char*,int ) ;
 double mcelem_array_contain_overlap_selec (int*,int,int *,int,int*,int,int ,TYPE_1__*) ;
 double mcelem_array_contained_selec (int*,int,int *,int,int*,int,int *,int,int ,TYPE_1__*) ;
 int pfree (int*) ;
 int qsort_arg (int*,int,int,int ,TYPE_1__*) ;

__attribute__((used)) static Selectivity
mcelem_array_selec(ArrayType *array, TypeCacheEntry *typentry,
       Datum *mcelem, int nmcelem,
       float4 *numbers, int nnumbers,
       float4 *hist, int nhist,
       Oid operator)
{
 Selectivity selec;
 int num_elems;
 Datum *elem_values;
 bool *elem_nulls;
 bool null_present;
 int nonnull_nitems;
 int i;





 deconstruct_array(array,
       typentry->type_id,
       typentry->typlen,
       typentry->typbyval,
       typentry->typalign,
       &elem_values, &elem_nulls, &num_elems);


 nonnull_nitems = 0;
 null_present = 0;
 for (i = 0; i < num_elems; i++)
 {
  if (elem_nulls[i])
   null_present = 1;
  else
   elem_values[nonnull_nitems++] = elem_values[i];
 }





 if (null_present && operator == OID_ARRAY_CONTAINS_OP)
 {
  pfree(elem_values);
  pfree(elem_nulls);
  return (Selectivity) 0.0;
 }


 qsort_arg(elem_values, nonnull_nitems, sizeof(Datum),
     element_compare, typentry);


 if (operator == OID_ARRAY_CONTAINS_OP || operator == OID_ARRAY_OVERLAP_OP)
  selec = mcelem_array_contain_overlap_selec(mcelem, nmcelem,
               numbers, nnumbers,
               elem_values, nonnull_nitems,
               operator, typentry);
 else if (operator == OID_ARRAY_CONTAINED_OP)
  selec = mcelem_array_contained_selec(mcelem, nmcelem,
            numbers, nnumbers,
            elem_values, nonnull_nitems,
            hist, nhist,
            operator, typentry);
 else
 {
  elog(ERROR, "arraycontsel called for unrecognized operator %u",
    operator);
  selec = 0.0;
 }

 pfree(elem_values);
 pfree(elem_nulls);
 return selec;
}

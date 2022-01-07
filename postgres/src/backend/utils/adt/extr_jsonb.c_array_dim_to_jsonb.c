
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parseState; void* res; } ;
typedef int Oid ;
typedef int JsonbTypeCategory ;
typedef TYPE_1__ JsonbInState ;
typedef int Datum ;


 int Assert (int) ;
 int WJB_BEGIN_ARRAY ;
 int WJB_END_ARRAY ;
 int datum_to_jsonb (int ,int,TYPE_1__*,int ,int ,int) ;
 void* pushJsonbValue (int *,int ,int *) ;

__attribute__((used)) static void
array_dim_to_jsonb(JsonbInState *result, int dim, int ndims, int *dims, Datum *vals,
       bool *nulls, int *valcount, JsonbTypeCategory tcategory,
       Oid outfuncoid)
{
 int i;

 Assert(dim < ndims);

 result->res = pushJsonbValue(&result->parseState, WJB_BEGIN_ARRAY, ((void*)0));

 for (i = 1; i <= dims[dim]; i++)
 {
  if (dim + 1 == ndims)
  {
   datum_to_jsonb(vals[*valcount], nulls[*valcount], result, tcategory,
         outfuncoid, 0);
   (*valcount)++;
  }
  else
  {
   array_dim_to_jsonb(result, dim + 1, ndims, dims, vals, nulls,
          valcount, tcategory, outfuncoid);
  }
 }

 result->res = pushJsonbValue(&result->parseState, WJB_END_ARRAY, ((void*)0));
}

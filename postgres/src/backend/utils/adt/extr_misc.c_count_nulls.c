
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
typedef int bits8 ;
struct TYPE_3__ {int flinfo; } ;
typedef TYPE_1__* FunctionCallInfo ;
typedef int ArrayType ;


 int* ARR_DIMS (int *) ;
 int ARR_NDIM (int *) ;
 int* ARR_NULLBITMAP (int *) ;
 int ArrayGetNItems (int,int*) ;
 int Assert (int) ;
 int OidIsValid (int ) ;
 scalar_t__ PG_ARGISNULL (int) ;
 int * PG_GETARG_ARRAYTYPE_P (int ) ;
 int PG_NARGS () ;
 int get_base_element_type (int ) ;
 int get_fn_expr_argtype (int ,int ) ;
 scalar_t__ get_fn_expr_variadic (int ) ;

__attribute__((used)) static bool
count_nulls(FunctionCallInfo fcinfo,
   int32 *nargs, int32 *nulls)
{
 int32 count = 0;
 int i;


 if (get_fn_expr_variadic(fcinfo->flinfo))
 {
  ArrayType *arr;
  int ndims,
     nitems,
       *dims;
  bits8 *bitmap;

  Assert(PG_NARGS() == 1);






  if (PG_ARGISNULL(0))
   return 0;
  Assert(OidIsValid(get_base_element_type(get_fn_expr_argtype(fcinfo->flinfo, 0))));


  arr = PG_GETARG_ARRAYTYPE_P(0);


  ndims = ARR_NDIM(arr);
  dims = ARR_DIMS(arr);
  nitems = ArrayGetNItems(ndims, dims);


  bitmap = ARR_NULLBITMAP(arr);
  if (bitmap)
  {
   int bitmask = 1;

   for (i = 0; i < nitems; i++)
   {
    if ((*bitmap & bitmask) == 0)
     count++;

    bitmask <<= 1;
    if (bitmask == 0x100)
    {
     bitmap++;
     bitmask = 1;
    }
   }
  }

  *nargs = nitems;
  *nulls = count;
 }
 else
 {

  for (i = 0; i < PG_NARGS(); i++)
  {
   if (PG_ARGISNULL(i))
    count++;
  }

  *nargs = PG_NARGS();
  *nulls = count;
 }

 return 1;
}

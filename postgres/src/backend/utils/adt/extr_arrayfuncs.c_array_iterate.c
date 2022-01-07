
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ current_item; scalar_t__ nitems; scalar_t__ slice_ndim; char* data_ptr; int* slice_nulls; int slice_len; int typalign; int typbyval; int typlen; int arr; int slice_lbound; int slice_dims; int nullbitmap; scalar_t__* slice_values; } ;
typedef scalar_t__ Datum ;
typedef int ArrayType ;
typedef TYPE_1__* ArrayIterator ;


 int ARR_ELEMTYPE (int ) ;
 scalar_t__ PointerGetDatum (int *) ;
 scalar_t__ array_get_isnull (int ,int ) ;
 char* att_addlength_pointer (char*,int ,char*) ;
 scalar_t__ att_align_nominal (char*,int ) ;
 int * construct_md_array (scalar_t__*,int*,scalar_t__,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ fetch_att (char*,int ,int ) ;

bool
array_iterate(ArrayIterator iterator, Datum *value, bool *isnull)
{

 if (iterator->current_item >= iterator->nitems)
  return 0;

 if (iterator->slice_ndim == 0)
 {



  if (array_get_isnull(iterator->nullbitmap, iterator->current_item++))
  {
   *isnull = 1;
   *value = (Datum) 0;
  }
  else
  {

   char *p = iterator->data_ptr;

   *isnull = 0;
   *value = fetch_att(p, iterator->typbyval, iterator->typlen);


   p = att_addlength_pointer(p, iterator->typlen, p);
   p = (char *) att_align_nominal(p, iterator->typalign);
   iterator->data_ptr = p;
  }
 }
 else
 {



  ArrayType *result;
  Datum *values = iterator->slice_values;
  bool *nulls = iterator->slice_nulls;
  char *p = iterator->data_ptr;
  int i;

  for (i = 0; i < iterator->slice_len; i++)
  {
   if (array_get_isnull(iterator->nullbitmap,
         iterator->current_item++))
   {
    nulls[i] = 1;
    values[i] = (Datum) 0;
   }
   else
   {
    nulls[i] = 0;
    values[i] = fetch_att(p, iterator->typbyval, iterator->typlen);


    p = att_addlength_pointer(p, iterator->typlen, p);
    p = (char *) att_align_nominal(p, iterator->typalign);
   }
  }

  iterator->data_ptr = p;

  result = construct_md_array(values,
         nulls,
         iterator->slice_ndim,
         iterator->slice_dims,
         iterator->slice_lbound,
         ARR_ELEMTYPE(iterator->arr),
         iterator->typlen,
         iterator->typbyval,
         iterator->typalign);

  *isnull = 0;
  *value = PointerGetDatum(result);
 }

 return 1;
}

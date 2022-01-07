
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ea_magic; int typlen; int typbyval; char typalign; int ndims; int* dims; int* lbound; int* dnulls; int * dvalues; } ;
typedef TYPE_1__ ExpandedArrayHeader ;
typedef int Datum ;


 int ArrayGetOffset (int,int*,int*,int*) ;
 int Assert (int) ;
 scalar_t__ DatumGetEOHP (int ) ;
 scalar_t__ EA_MAGIC ;
 int MAXDIM ;
 int deconstruct_expanded_array (TYPE_1__*) ;

__attribute__((used)) static Datum
array_get_element_expanded(Datum arraydatum,
         int nSubscripts, int *indx,
         int arraytyplen,
         int elmlen, bool elmbyval, char elmalign,
         bool *isNull)
{
 ExpandedArrayHeader *eah;
 int i,
    ndim,
      *dim,
      *lb,
    offset;
 Datum *dvalues;
 bool *dnulls;

 eah = (ExpandedArrayHeader *) DatumGetEOHP(arraydatum);
 Assert(eah->ea_magic == EA_MAGIC);


 Assert(arraytyplen == -1);
 Assert(elmlen == eah->typlen);
 Assert(elmbyval == eah->typbyval);
 Assert(elmalign == eah->typalign);

 ndim = eah->ndims;
 dim = eah->dims;
 lb = eah->lbound;




 if (ndim != nSubscripts || ndim <= 0 || ndim > MAXDIM)
 {
  *isNull = 1;
  return (Datum) 0;
 }
 for (i = 0; i < ndim; i++)
 {
  if (indx[i] < lb[i] || indx[i] >= (dim[i] + lb[i]))
  {
   *isNull = 1;
   return (Datum) 0;
  }
 }




 offset = ArrayGetOffset(nSubscripts, dim, lb, indx);





 deconstruct_expanded_array(eah);

 dvalues = eah->dvalues;
 dnulls = eah->dnulls;




 if (dnulls && dnulls[offset])
 {
  *isNull = 1;
  return (Datum) 0;
 }







 *isNull = 0;
 return dvalues[offset];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits8 ;
typedef int Datum ;
typedef int ArrayType ;


 char* ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 int* ARR_LBOUND (int *) ;
 int ARR_NDIM (int *) ;
 int * ARR_NULLBITMAP (int *) ;
 int ArrayCast (char*,int,int) ;
 int ArrayGetOffset (int,int*,int*,int*) ;
 int * DatumGetArrayTypeP (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int MAXDIM ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (scalar_t__) ;
 int array_get_element_expanded (int ,int,int*,int,int,int,char,int*) ;
 scalar_t__ array_get_isnull (int *,int) ;
 char* array_seek (char*,int ,int *,int,int,int,char) ;

Datum
array_get_element(Datum arraydatum,
      int nSubscripts,
      int *indx,
      int arraytyplen,
      int elmlen,
      bool elmbyval,
      char elmalign,
      bool *isNull)
{
 int i,
    ndim,
      *dim,
      *lb,
    offset,
    fixedDim[1],
    fixedLb[1];
 char *arraydataptr,
      *retptr;
 bits8 *arraynullsptr;

 if (arraytyplen > 0)
 {



  ndim = 1;
  fixedDim[0] = arraytyplen / elmlen;
  fixedLb[0] = 0;
  dim = fixedDim;
  lb = fixedLb;
  arraydataptr = (char *) DatumGetPointer(arraydatum);
  arraynullsptr = ((void*)0);
 }
 else if (VARATT_IS_EXTERNAL_EXPANDED(DatumGetPointer(arraydatum)))
 {

  return array_get_element_expanded(arraydatum,
            nSubscripts,
            indx,
            arraytyplen,
            elmlen,
            elmbyval,
            elmalign,
            isNull);
 }
 else
 {

  ArrayType *array = DatumGetArrayTypeP(arraydatum);

  ndim = ARR_NDIM(array);
  dim = ARR_DIMS(array);
  lb = ARR_LBOUND(array);
  arraydataptr = ARR_DATA_PTR(array);
  arraynullsptr = ARR_NULLBITMAP(array);
 }




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




 if (array_get_isnull(arraynullsptr, offset))
 {
  *isNull = 1;
  return (Datum) 0;
 }




 *isNull = 0;
 retptr = array_seek(arraydataptr, 0, arraynullsptr, offset,
      elmlen, elmbyval, elmalign);
 return ArrayCast(retptr, elmbyval, elmlen);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;
typedef int ArrayType ;


 int * DatumGetArrayTypeP (int ) ;
 int PointerGetDatum (int *) ;
 int array_set_element (int ,int,int*,int ,int,int,int,int,char) ;

ArrayType *
array_set(ArrayType *array, int nSubscripts, int *indx,
    Datum dataValue, bool isNull,
    int arraytyplen, int elmlen, bool elmbyval, char elmalign)
{
 return DatumGetArrayTypeP(array_set_element(PointerGetDatum(array),
            nSubscripts, indx,
            dataValue, isNull,
            arraytyplen,
            elmlen, elmbyval, elmalign));
}

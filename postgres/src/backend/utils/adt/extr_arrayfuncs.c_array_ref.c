
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;
typedef int ArrayType ;


 int PointerGetDatum (int *) ;
 int array_get_element (int ,int,int*,int,int,int,char,int*) ;

Datum
array_ref(ArrayType *array, int nSubscripts, int *indx,
    int arraytyplen, int elmlen, bool elmbyval, char elmalign,
    bool *isNull)
{
 return array_get_element(PointerGetDatum(array), nSubscripts, indx,
        arraytyplen, elmlen, elmbyval, elmalign,
        isNull);
}

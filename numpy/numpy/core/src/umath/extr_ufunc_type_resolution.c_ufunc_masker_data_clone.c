
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _ufunc_masker_data ;
typedef int NpyAuxData ;


 scalar_t__ PyArray_malloc (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static NpyAuxData *
ufunc_masker_data_clone(NpyAuxData *data)
{
    _ufunc_masker_data *n;


    n = (_ufunc_masker_data *)PyArray_malloc(sizeof(_ufunc_masker_data));
    if (n == ((void*)0)) {
        return ((void*)0);
    }


    memcpy(n, data, sizeof(_ufunc_masker_data));

    return (NpyAuxData *)n;
}

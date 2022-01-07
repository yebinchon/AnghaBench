
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _strided_zero_pad_data ;
typedef int NpyAuxData ;


 scalar_t__ PyArray_malloc (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static NpyAuxData *_strided_zero_pad_data_clone(NpyAuxData *data)
{
    _strided_zero_pad_data *newdata =
            (_strided_zero_pad_data *)PyArray_malloc(
                                    sizeof(_strided_zero_pad_data));
    if (newdata == ((void*)0)) {
        return ((void*)0);
    }

    memcpy(newdata, data, sizeof(_strided_zero_pad_data));

    return (NpyAuxData *)newdata;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _dst_memset_zero_data ;
typedef int NpyAuxData ;


 scalar_t__ PyArray_malloc (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static NpyAuxData *_dst_memset_zero_data_clone(NpyAuxData *data)
{
    _dst_memset_zero_data *newdata =
            (_dst_memset_zero_data *)PyArray_malloc(
                                    sizeof(_dst_memset_zero_data));
    if (newdata == ((void*)0)) {
        return ((void*)0);
    }

    memcpy(newdata, data, sizeof(_dst_memset_zero_data));

    return (NpyAuxData *)newdata;
}

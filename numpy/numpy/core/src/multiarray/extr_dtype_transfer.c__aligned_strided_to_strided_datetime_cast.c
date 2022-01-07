
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ npy_intp ;
typedef int npy_int64 ;
struct TYPE_2__ {int num; int denom; } ;
typedef TYPE_1__ _strided_datetime_cast_data ;
typedef int NpyAuxData ;


 int NPY_DATETIME_NAT ;

__attribute__((used)) static void
_aligned_strided_to_strided_datetime_cast(char *dst,
                        npy_intp dst_stride,
                        char *src, npy_intp src_stride,
                        npy_intp N, npy_intp src_itemsize,
                        NpyAuxData *data)
{
    _strided_datetime_cast_data *d = (_strided_datetime_cast_data *)data;
    npy_int64 num = d->num, denom = d->denom;
    npy_int64 dt;

    while (N > 0) {
        dt = *(npy_int64 *)src;

        if (dt != NPY_DATETIME_NAT) {

            if (dt < 0) {
                dt = (dt * num - (denom - 1)) / denom;
            }
            else {
                dt = dt * num / denom;
            }
        }

        *(npy_int64 *)dst = dt;

        dst += dst_stride;
        src += src_stride;
        --N;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ npy_intp ;
typedef char npy_int64 ;
typedef int npy_datetimestruct ;
typedef int dt ;
struct TYPE_2__ {int dst_meta; int src_meta; } ;
typedef TYPE_1__ _strided_datetime_cast_data ;
typedef int NpyAuxData ;


 char NPY_DATETIME_NAT ;
 scalar_t__ convert_datetime_to_datetimestruct (int *,char,int *) ;
 scalar_t__ convert_datetimestruct_to_datetime (int *,int *,char*) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
_strided_to_strided_datetime_general_cast(char *dst, npy_intp dst_stride,
                        char *src, npy_intp src_stride,
                        npy_intp N, npy_intp src_itemsize,
                        NpyAuxData *data)
{
    _strided_datetime_cast_data *d = (_strided_datetime_cast_data *)data;
    npy_int64 dt;
    npy_datetimestruct dts;

    while (N > 0) {
        memcpy(&dt, src, sizeof(dt));

        if (convert_datetime_to_datetimestruct(&d->src_meta,
                                               dt, &dts) < 0) {
            dt = NPY_DATETIME_NAT;
        }
        else {
            if (convert_datetimestruct_to_datetime(&d->dst_meta,
                                                   &dts, &dt) < 0) {
                dt = NPY_DATETIME_NAT;
            }
        }

        memcpy(dst, &dt, sizeof(dt));

        dst += dst_stride;
        src += src_stride;
        --N;
    }
}

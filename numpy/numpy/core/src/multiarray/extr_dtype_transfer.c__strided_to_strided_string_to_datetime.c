
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ npy_intp ;
typedef char npy_int64 ;
typedef int npy_datetimestruct ;
typedef int dt ;
struct TYPE_4__ {int base; } ;
struct TYPE_3__ {char* tmp_buffer; TYPE_2__ dst_meta; } ;
typedef TYPE_1__ _strided_datetime_cast_data ;
typedef int NpyAuxData ;


 char NPY_DATETIME_NAT ;
 int NPY_SAME_KIND_CASTING ;
 scalar_t__ convert_datetimestruct_to_datetime (TYPE_2__*,int *,char*) ;
 char* memchr (char*,char,scalar_t__) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ parse_iso_8601_datetime (char*,int,int ,int ,int *,int *,int *) ;

__attribute__((used)) static void
_strided_to_strided_string_to_datetime(char *dst, npy_intp dst_stride,
                        char *src, npy_intp src_stride,
                        npy_intp N, npy_intp src_itemsize,
                        NpyAuxData *data)
{
    _strided_datetime_cast_data *d = (_strided_datetime_cast_data *)data;
    npy_datetimestruct dts;
    char *tmp_buffer = d->tmp_buffer;
    char *tmp;

    while (N > 0) {
        npy_int64 dt = ~NPY_DATETIME_NAT;


        tmp = memchr(src, '\0', src_itemsize);


        if (tmp == ((void*)0)) {
            memcpy(tmp_buffer, src, src_itemsize);
            tmp_buffer[src_itemsize] = '\0';

            if (parse_iso_8601_datetime(tmp_buffer, src_itemsize,
                                    d->dst_meta.base, NPY_SAME_KIND_CASTING,
                                    &dts, ((void*)0), ((void*)0)) < 0) {
                dt = NPY_DATETIME_NAT;
            }
        }

        else {
            if (parse_iso_8601_datetime(src, tmp - src,
                                    d->dst_meta.base, NPY_SAME_KIND_CASTING,
                                    &dts, ((void*)0), ((void*)0)) < 0) {
                dt = NPY_DATETIME_NAT;
            }
        }


        if (dt != NPY_DATETIME_NAT &&
                convert_datetimestruct_to_datetime(&d->dst_meta,
                                               &dts, &dt) < 0) {
            dt = NPY_DATETIME_NAT;
        }

        memcpy(dst, &dt, sizeof(dt));

        dst += dst_stride;
        src += src_stride;
        --N;
    }
}

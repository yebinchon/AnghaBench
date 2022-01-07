
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ zip_uint64_t ;
typedef int zip_int64_t ;
struct TYPE_2__ {int (* f ) (int ,void*,scalar_t__,int ) ;int (* l ) (int *,int ,void*,scalar_t__,int ) ;} ;
struct zip_source {int error_source; int ud; int * src; TYPE_1__ cb; int is_open; } ;


 scalar_t__ ZIP_INT64_MAX ;
 int ZIP_LES_INVAL ;
 int ZIP_LES_LOWER ;
 int ZIP_LES_UPPER ;
 int ZIP_SOURCE_ERR_LOWER ;
 int ZIP_SOURCE_READ ;
 int stub1 (int ,void*,scalar_t__,int ) ;
 int stub2 (int *,int ,void*,scalar_t__,int ) ;

zip_int64_t
zip_source_read(struct zip_source *src, void *data, zip_uint64_t len)
{
    zip_int64_t ret;

    if (!src->is_open || len > ZIP_INT64_MAX || (len > 0 && data == ((void*)0))) {
 src->error_source = ZIP_LES_INVAL;
 return -1;
    }

    if (src->src == ((void*)0))
 return src->cb.f(src->ud, data, len, ZIP_SOURCE_READ);

    ret = src->cb.l(src->src, src->ud, data, len, ZIP_SOURCE_READ);

    if (ret < 0) {
 if (ret == ZIP_SOURCE_ERR_LOWER)
     src->error_source = ZIP_LES_LOWER;
 else
     src->error_source = ZIP_LES_UPPER;
 return -1;
    }

    return ret;
}

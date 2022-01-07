
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ zip_int64_t ;
struct TYPE_2__ {scalar_t__ (* f ) (int ,int *,int ,int ) ;scalar_t__ (* l ) (struct zip_source*,int ,int *,int ,int ) ;} ;
struct zip_source {int is_open; void* error_source; struct zip_source* src; int ud; TYPE_1__ cb; } ;


 void* ZIP_LES_INVAL ;
 void* ZIP_LES_LOWER ;
 void* ZIP_LES_UPPER ;
 scalar_t__ ZIP_SOURCE_ERR_LOWER ;
 int ZIP_SOURCE_OPEN ;
 scalar_t__ stub1 (int ,int *,int ,int ) ;
 scalar_t__ stub2 (struct zip_source*,int ,int *,int ,int ) ;
 int zip_source_close (struct zip_source*) ;

int
zip_source_open(struct zip_source *src)
{
    zip_int64_t ret;

    if (src->is_open) {
 src->error_source = ZIP_LES_INVAL;
 return -1;
    }

    if (src->src == ((void*)0)) {
 if (src->cb.f(src->ud, ((void*)0), 0, ZIP_SOURCE_OPEN) < 0)
     return -1;
    }
    else {
 if (zip_source_open(src->src) < 0) {
     src->error_source = ZIP_LES_LOWER;
     return -1;
 }

 ret = src->cb.l(src->src, src->ud, ((void*)0), 0, ZIP_SOURCE_OPEN);

 if (ret < 0) {
     zip_source_close(src->src);

     if (ret == ZIP_SOURCE_ERR_LOWER)
  src->error_source = ZIP_LES_LOWER;
     else
  src->error_source = ZIP_LES_UPPER;
     return -1;
 }
    }

    src->is_open = 1;

    return 0;
}

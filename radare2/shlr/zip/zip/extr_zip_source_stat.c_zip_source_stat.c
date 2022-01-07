
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ zip_int64_t ;
struct zip_stat {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* f ) (int ,struct zip_stat*,int,int ) ;scalar_t__ (* l ) (struct zip_source*,int ,struct zip_stat*,int,int ) ;} ;
struct zip_source {void* error_source; int ud; struct zip_source* src; TYPE_1__ cb; } ;


 void* ZIP_LES_INVAL ;
 void* ZIP_LES_LOWER ;
 void* ZIP_LES_UPPER ;
 scalar_t__ ZIP_SOURCE_ERR_LOWER ;
 int ZIP_SOURCE_STAT ;
 scalar_t__ stub1 (int ,struct zip_stat*,int,int ) ;
 scalar_t__ stub2 (struct zip_source*,int ,struct zip_stat*,int,int ) ;

int
zip_source_stat(struct zip_source *src, struct zip_stat *st)
{
    zip_int64_t ret;

    if (st == ((void*)0)) {
 src->error_source = ZIP_LES_INVAL;
 return -1;
    }

    if (src->src == ((void*)0)) {
 if (src->cb.f(src->ud, st, sizeof(*st), ZIP_SOURCE_STAT) < 0)
     return -1;
 return 0;
    }

    if (zip_source_stat(src->src, st) < 0) {
 src->error_source = ZIP_LES_LOWER;
 return -1;
    }

    ret = src->cb.l(src->src, src->ud, st, sizeof(*st), ZIP_SOURCE_STAT);

    if (ret < 0) {
 if (ret == ZIP_SOURCE_ERR_LOWER)
     src->error_source = ZIP_LES_LOWER;
 else
     src->error_source = ZIP_LES_UPPER;
 return -1;
    }

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l ) (struct zip_source*,int ,int *,int ,int ) ;} ;
struct zip_source {int ud; TYPE_1__ cb; scalar_t__ is_open; struct zip_source* src; } ;


 int ZIP_SOURCE_CLOSE ;
 int ZIP_SOURCE_FREE ;
 int free (struct zip_source*) ;
 int stub1 (struct zip_source*,int ,int *,int ,int ) ;
 int stub2 (struct zip_source*,int ,int *,int ,int ) ;
 int zip_source_free (struct zip_source*) ;

struct zip_source *
zip_source_pop(struct zip_source *src)
{
    struct zip_source *lower;

    if (src == ((void*)0))
 return ((void*)0);

    lower = src->src;

    if (lower == ((void*)0))
 zip_source_free(src);
    else {
 if (src->is_open)
     (void)src->cb.l(src, src->ud, ((void*)0), 0, ZIP_SOURCE_CLOSE);
 (void)src->cb.l(src, src->ud, ((void*)0), 0, ZIP_SOURCE_FREE);

 free(src);
    }

    return lower;
}

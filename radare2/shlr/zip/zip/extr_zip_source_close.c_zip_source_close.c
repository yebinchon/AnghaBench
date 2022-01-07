
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l ) (struct zip_source*,int ,int *,int ,int ) ;int (* f ) (int ,int *,int ,int ) ;} ;
struct zip_source {scalar_t__ is_open; struct zip_source* src; int ud; TYPE_1__ cb; } ;


 int ZIP_SOURCE_CLOSE ;
 int stub1 (int ,int *,int ,int ) ;
 int stub2 (struct zip_source*,int ,int *,int ,int ) ;

void
zip_source_close(struct zip_source *src)
{
    if (!src->is_open)
 return;

    if (src->src == ((void*)0))
 (void)src->cb.f(src->ud, ((void*)0), 0, ZIP_SOURCE_CLOSE);
    else {
 (void)src->cb.l(src->src, src->ud, ((void*)0), 0, ZIP_SOURCE_CLOSE);
 zip_source_close(src->src);
    }

    src->is_open = 0;
}

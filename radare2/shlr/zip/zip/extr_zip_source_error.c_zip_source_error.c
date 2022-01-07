
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* f ) (int ,int*,int,int ) ;int (* l ) (struct zip_source*,int ,int*,int,int ) ;} ;
struct zip_source {int error_source; int ud; struct zip_source* src; TYPE_1__ cb; } ;
typedef int e ;


 int ZIP_ER_INTERNAL ;
 int ZIP_ER_INVAL ;




 int ZIP_SOURCE_ERROR ;
 scalar_t__ stub1 (int ,int*,int,int ) ;
 int stub2 (struct zip_source*,int ,int*,int,int ) ;

void
zip_source_error(struct zip_source *src, int *ze, int *se)
{
    int e[2];

    if (src->src == ((void*)0)) {
        if (src->cb.f(src->ud, e, sizeof(e), ZIP_SOURCE_ERROR) < 0) {
            e[0] = ZIP_ER_INTERNAL;
            e[1] = 0;
        }
    }
    else {
 switch (src->error_source) {
 case 129:
     e[0] = e[1] = 0;
     break;

 case 131:
     e[0] = ZIP_ER_INVAL;
     e[1] = 0;
     break;

 case 130:
     zip_source_error(src->src, ze, se);
     return;

 case 128:
     if (src->cb.l(src->src, src->ud, e, sizeof(e), ZIP_SOURCE_ERROR) < 0) {
  e[0] = ZIP_ER_INTERNAL;
  e[1] = 0;
     }
     break;

 default:
     e[0] = ZIP_ER_INTERNAL;
     e[1] = 0;
     break;
 }
    }

    if (ze)
 *ze = e[0];
    if (se)
 *se = e[1];
}

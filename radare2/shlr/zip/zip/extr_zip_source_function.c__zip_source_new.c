
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * f; } ;
struct zip_source {scalar_t__ is_open; int error_source; int * ud; TYPE_1__ cb; int * src; } ;
struct zip {int error; } ;


 int ZIP_ER_MEMORY ;
 int ZIP_LES_NONE ;
 int _zip_error_set (int *,int ,int ) ;
 scalar_t__ malloc (int) ;

struct zip_source *
_zip_source_new(struct zip *za)
{
    struct zip_source *src;

    if ((src=(struct zip_source *)malloc(sizeof(*src))) == ((void*)0)) {
 _zip_error_set(&za->error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    src->src = ((void*)0);
    src->cb.f = ((void*)0);
    src->ud = ((void*)0);
    src->error_source = ZIP_LES_NONE;
    src->is_open = 0;

    return src;
}

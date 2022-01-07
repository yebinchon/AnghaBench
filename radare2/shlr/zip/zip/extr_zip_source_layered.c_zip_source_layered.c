
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zip_source_layered_callback ;
struct TYPE_2__ {int l; } ;
struct zip_source {void* ud; TYPE_1__ cb; struct zip_source* src; } ;
struct zip {int dummy; } ;


 struct zip_source* _zip_source_new (struct zip*) ;

struct zip_source *
zip_source_layered(struct zip *za, struct zip_source *src,
     zip_source_layered_callback cb, void *ud)
{
    struct zip_source *zs;

    if (za == ((void*)0))
 return ((void*)0);

    if ((zs=_zip_source_new(za)) == ((void*)0))
 return ((void*)0);

    zs->src = src;
    zs->cb.l = cb;
    zs->ud = ud;

    return zs;
}

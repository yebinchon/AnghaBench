
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* builtin_info; TYPE_1__* ctx; } ;
typedef TYPE_3__ jsdisp_t ;
struct TYPE_10__ {unsigned int flags; int name; } ;
typedef TYPE_4__ builtin_prop_t ;
typedef int WCHAR ;
struct TYPE_8__ {int props_cnt; TYPE_4__ const* props; } ;
struct TYPE_7__ {unsigned int version; int html_mode; } ;


 int PROPF_HTML ;
 unsigned int PROPF_VERSION_MASK ;
 unsigned int PROPF_VERSION_SHIFT ;
 int wcscmp (int const*,int ) ;

__attribute__((used)) static const builtin_prop_t *find_builtin_prop(jsdisp_t *This, const WCHAR *name)
{
    int min = 0, max, i, r;

    max = This->builtin_info->props_cnt-1;
    while(min <= max) {
        i = (min+max)/2;

        r = wcscmp(name, This->builtin_info->props[i].name);
        if(!r) {

            unsigned version = (This->builtin_info->props[i].flags & PROPF_VERSION_MASK)
                >> PROPF_VERSION_SHIFT;
            if(version && version > This->ctx->version)
                return ((void*)0);


            if((This->builtin_info->props[i].flags & PROPF_HTML) && !This->ctx->html_mode)
                return ((void*)0);

            return This->builtin_info->props + i;
        }

        if(r < 0)
            max = i-1;
        else
            min = i+1;
    }

    return ((void*)0);
}

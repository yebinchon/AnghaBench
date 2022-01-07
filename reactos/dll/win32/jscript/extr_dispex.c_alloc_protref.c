
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_5__ {int ref; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ dispex_prop_t ;
typedef int WCHAR ;
typedef int DWORD ;


 int PROP_PROTREF ;
 TYPE_2__* alloc_prop (int *,int const*,int ,int ) ;

__attribute__((used)) static dispex_prop_t *alloc_protref(jsdisp_t *This, const WCHAR *name, DWORD ref)
{
    dispex_prop_t *ret;

    ret = alloc_prop(This, name, PROP_PROTREF, 0);
    if(!ret)
        return ((void*)0);

    ret->u.ref = ref;
    return ret;
}

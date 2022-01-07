
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int prop_type_t ;
struct TYPE_7__ {size_t prop_cnt; TYPE_2__* props; } ;
typedef TYPE_1__ jsdisp_t ;
struct TYPE_8__ {int bucket_head; int bucket_next; int hash; int flags; int type; int name; } ;
typedef TYPE_2__ dispex_prop_t ;
typedef int WCHAR ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 unsigned int get_props_idx (TYPE_1__*,int ) ;
 int heap_strdupW (int const*) ;
 int resize_props (TYPE_1__*) ;
 int string_hash (int const*) ;

__attribute__((used)) static inline dispex_prop_t* alloc_prop(jsdisp_t *This, const WCHAR *name, prop_type_t type, DWORD flags)
{
    dispex_prop_t *prop;
    unsigned bucket;

    if(FAILED(resize_props(This)))
        return ((void*)0);

    prop = &This->props[This->prop_cnt];
    prop->name = heap_strdupW(name);
    if(!prop->name)
        return ((void*)0);
    prop->type = type;
    prop->flags = flags;
    prop->hash = string_hash(name);

    bucket = get_props_idx(This, prop->hash);
    prop->bucket_next = This->props[bucket].bucket_head;
    This->props[bucket].bucket_head = This->prop_cnt++;
    return prop;
}

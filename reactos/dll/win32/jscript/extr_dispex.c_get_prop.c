
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t prop_cnt; TYPE_2__* props; } ;
typedef TYPE_1__ jsdisp_t ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_2__ dispex_prop_t ;
typedef size_t DISPID ;


 scalar_t__ PROP_DELETED ;

__attribute__((used)) static inline dispex_prop_t *get_prop(jsdisp_t *This, DISPID id)
{
    if(id < 0 || id >= This->prop_cnt || This->props[id].type == PROP_DELETED)
        return ((void*)0);

    return This->props+id;
}

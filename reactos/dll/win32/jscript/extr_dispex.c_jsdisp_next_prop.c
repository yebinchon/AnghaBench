
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int prop_cnt; TYPE_2__* props; } ;
typedef TYPE_1__ jsdisp_t ;
struct TYPE_10__ {scalar_t__ type; int name; } ;
typedef TYPE_2__ dispex_prop_t ;
typedef int HRESULT ;
typedef int DISPID ;
typedef scalar_t__ BOOL ;


 int DISPID_STARTENUM ;
 scalar_t__ FAILED (int ) ;
 int PROPF_ENUMERABLE ;
 scalar_t__ PROP_DELETED ;
 scalar_t__ PROP_PROTREF ;
 int S_FALSE ;
 int S_OK ;
 int fill_protrefs (TYPE_1__*) ;
 int get_flags (TYPE_1__*,TYPE_2__*) ;
 int prop_to_id (TYPE_1__*,TYPE_2__*) ;

HRESULT jsdisp_next_prop(jsdisp_t *obj, DISPID id, BOOL own_only, DISPID *ret)
{
    dispex_prop_t *iter;
    HRESULT hres;

    if(id == DISPID_STARTENUM && !own_only) {
        hres = fill_protrefs(obj);
        if(FAILED(hres))
            return hres;
    }

    if(id + 1 < 0 || id+1 >= obj->prop_cnt)
        return S_FALSE;

    for(iter = &obj->props[id + 1]; iter < obj->props + obj->prop_cnt; iter++) {
        if(!iter->name || iter->type == PROP_DELETED)
            continue;
        if(own_only && iter->type == PROP_PROTREF)
            continue;
        if(!(get_flags(obj, iter) & PROPF_ENUMERABLE))
            continue;
        *ret = prop_to_id(obj, iter);
        return S_OK;
    }

    return S_FALSE;
}

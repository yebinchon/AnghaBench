
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ setter; scalar_t__ getter; } ;
struct TYPE_11__ {TYPE_1__ accessor; int val; } ;
struct TYPE_13__ {int prop_cnt; int type; TYPE_3__* builtin_info; scalar_t__ prototype; int ctx; struct TYPE_13__* props; struct TYPE_13__* name; TYPE_2__ u; } ;
typedef TYPE_4__ jsdisp_t ;
typedef TYPE_4__ dispex_prop_t ;
struct TYPE_12__ {int (* destructor ) (TYPE_4__*) ;} ;




 int TRACE (char*,TYPE_4__*) ;
 int heap_free (TYPE_4__*) ;
 int jsdisp_release (scalar_t__) ;
 int jsval_release (int ) ;
 int script_release (int ) ;
 int stub1 (TYPE_4__*) ;

void jsdisp_free(jsdisp_t *obj)
{
    dispex_prop_t *prop;

    TRACE("(%p)\n", obj);

    for(prop = obj->props; prop < obj->props+obj->prop_cnt; prop++) {
        switch(prop->type) {
        case 128:
            jsval_release(prop->u.val);
            break;
        case 129:
            if(prop->u.accessor.getter)
                jsdisp_release(prop->u.accessor.getter);
            if(prop->u.accessor.setter)
                jsdisp_release(prop->u.accessor.setter);
            break;
        default:
            break;
        };
        heap_free(prop->name);
    }
    heap_free(obj->props);
    script_release(obj->ctx);
    if(obj->prototype)
        jsdisp_release(obj->prototype);

    if(obj->builtin_info->destructor)
        obj->builtin_info->destructor(obj);
    else
        heap_free(obj);
}

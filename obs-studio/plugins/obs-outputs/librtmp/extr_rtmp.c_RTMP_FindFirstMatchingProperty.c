
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int o_num; } ;
struct TYPE_10__ {TYPE_3__ p_object; } ;
struct TYPE_11__ {scalar_t__ p_type; TYPE_1__ p_vu; int p_name; } ;
typedef int AVal ;
typedef TYPE_2__ AMFObjectProperty ;
typedef TYPE_3__ AMFObject ;


 scalar_t__ AMF_ECMA_ARRAY ;
 TYPE_2__* AMF_GetProp (TYPE_3__*,int *,int) ;
 scalar_t__ AMF_OBJECT ;
 scalar_t__ AVMATCH (int *,int const*) ;
 int FALSE ;
 int TRUE ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

int
RTMP_FindFirstMatchingProperty(AMFObject *obj, const AVal *name,
                               AMFObjectProperty * p)
{
    int n;

    for (n = 0; n < obj->o_num; n++)
    {
        AMFObjectProperty *prop = AMF_GetProp(obj, ((void*)0), n);

        if (AVMATCH(&prop->p_name, name))
        {
            memcpy(p, prop, sizeof(*prop));
            return TRUE;
        }

        if (prop->p_type == AMF_OBJECT || prop->p_type == AMF_ECMA_ARRAY)
        {
            if (RTMP_FindFirstMatchingProperty(&prop->p_vu.p_object, name, p))
                return TRUE;
        }
    }
    return FALSE;
}

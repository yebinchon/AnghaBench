
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {int o_num; } ;
struct TYPE_14__ {TYPE_5__ p_object; } ;
struct TYPE_13__ {int av_val; int av_len; } ;
struct TYPE_16__ {scalar_t__ p_type; TYPE_2__ p_vu; TYPE_1__ p_name; } ;
struct TYPE_15__ {int av_len; int av_val; } ;
typedef TYPE_3__ AVal ;
typedef TYPE_4__ AMFObjectProperty ;
typedef TYPE_5__ AMFObject ;


 TYPE_4__* AMF_GetProp (TYPE_5__*,int *,int) ;
 scalar_t__ AMF_OBJECT ;
 int FALSE ;
 int TRUE ;
 int memcmp (int ,int ,int ) ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;

int
RTMP_FindPrefixProperty(AMFObject *obj, const AVal *name,
                        AMFObjectProperty * p)
{
    int n;
    for (n = 0; n < obj->o_num; n++)
    {
        AMFObjectProperty *prop = AMF_GetProp(obj, ((void*)0), n);

        if (prop->p_name.av_len > name->av_len &&
                !memcmp(prop->p_name.av_val, name->av_val, name->av_len))
        {
            memcpy(p, prop, sizeof(*prop));
            return TRUE;
        }

        if (prop->p_type == AMF_OBJECT)
        {
            if (RTMP_FindPrefixProperty(&prop->p_vu.p_object, name, p))
                return TRUE;
        }
    }
    return FALSE;
}

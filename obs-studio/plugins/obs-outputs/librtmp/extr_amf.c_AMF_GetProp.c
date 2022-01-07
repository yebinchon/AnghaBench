
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int o_num; TYPE_1__* o_props; } ;
struct TYPE_5__ {int p_name; } ;
typedef int AVal ;
typedef TYPE_1__ AMFObjectProperty ;
typedef TYPE_2__ AMFObject ;


 int AMFProp_Invalid ;
 scalar_t__ AVMATCH (int *,int const*) ;

AMFObjectProperty *
AMF_GetProp(AMFObject *obj, const AVal *name, int nIndex)
{
    if (nIndex >= 0)
    {
        if (nIndex < obj->o_num)
            return &obj->o_props[nIndex];
    }
    else
    {
        int n;
        for (n = 0; n < obj->o_num; n++)
        {
            if (AVMATCH(&obj->o_props[n].p_name, name))
                return &obj->o_props[n];
        }
    }

    return (AMFObjectProperty *)&AMFProp_Invalid;
}

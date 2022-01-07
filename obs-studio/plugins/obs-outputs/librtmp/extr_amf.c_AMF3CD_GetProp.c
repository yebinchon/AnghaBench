
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cd_num; int * cd_props; } ;
typedef int AVal ;
typedef TYPE_1__ AMF3ClassDef ;


 int AV_empty ;

AVal *
AMF3CD_GetProp(AMF3ClassDef *cd, int nIndex)
{
    if (nIndex >= cd->cd_num)
        return (AVal *)&AV_empty;
    return &cd->cd_props[nIndex];
}

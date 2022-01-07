
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cd_num; int * cd_props; } ;
typedef int AVal ;
typedef TYPE_1__ AMF3ClassDef ;


 int * realloc (int *,int) ;

void
AMF3CD_AddProp(AMF3ClassDef *cd, AVal *prop)
{
    if (!(cd->cd_num & 0x0f))
        cd->cd_props = realloc(cd->cd_props, (cd->cd_num + 16) * sizeof(AVal));
    cd->cd_props[cd->cd_num++] = *prop;
}

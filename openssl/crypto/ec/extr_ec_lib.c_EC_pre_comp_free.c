
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ec; int nistp521; int nistp256; int nistp224; int nistz256; } ;
struct TYPE_5__ {int pre_comp_type; TYPE_1__ pre_comp; } ;
typedef TYPE_2__ EC_GROUP ;


 int EC_ec_pre_comp_free (int *) ;
 int EC_nistp224_pre_comp_free (int ) ;
 int EC_nistp256_pre_comp_free (int ) ;
 int EC_nistp521_pre_comp_free (int ) ;
 int EC_nistz256_pre_comp_free (int ) ;







void EC_pre_comp_free(EC_GROUP *group)
{
    switch (group->pre_comp_type) {
    case 128:
        break;
    case 129:



        break;

    case 132:
        EC_nistp224_pre_comp_free(group->pre_comp.nistp224);
        break;
    case 131:
        EC_nistp256_pre_comp_free(group->pre_comp.nistp256);
        break;
    case 130:
        EC_nistp521_pre_comp_free(group->pre_comp.nistp521);
        break;






    case 133:
        EC_ec_pre_comp_free(group->pre_comp.ec);
        break;
    }
    group->pre_comp.ec = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* jsonsl_jpr_t ;
struct TYPE_4__ {struct TYPE_4__* orig; struct TYPE_4__* basestr; struct TYPE_4__* components; } ;


 int free (TYPE_1__*) ;

void jsonsl_jpr_destroy(jsonsl_jpr_t jpr)
{
    free(jpr->components);
    free(jpr->basestr);
    free(jpr->orig);
    free(jpr);
}

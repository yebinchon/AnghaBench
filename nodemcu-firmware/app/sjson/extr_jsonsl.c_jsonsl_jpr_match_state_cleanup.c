
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* jsonsl_t ;
struct TYPE_3__ {scalar_t__ jpr_count; int * jpr_root; int * jprs; } ;


 int free (int *) ;

void jsonsl_jpr_match_state_cleanup(jsonsl_t jsn)
{
    if (jsn->jpr_count == 0) {
        return;
    }

    free(jsn->jpr_root);
    free(jsn->jprs);
    jsn->jprs = ((void*)0);
    jsn->jpr_root = ((void*)0);
    jsn->jpr_count = 0;
}

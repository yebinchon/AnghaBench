
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {TYPE_2__* Instance; } ;
struct TYPE_7__ {TYPE_1__* channel; } ;
struct TYPE_6__ {int CSC; } ;
typedef TYPE_2__ FTM_TypeDef ;
typedef TYPE_3__ FTM_HandleTypeDef ;


 int FTM_CSC_CHIE ;
 int IS_FTM_INSTANCE (TYPE_2__*) ;
 int assert_param (int ) ;

void HAL_FTM_PWM_Start_IT(FTM_HandleTypeDef *hftm, uint32_t channel) {
    FTM_TypeDef *FTMx = hftm->Instance;
    assert_param(IS_FTM_INSTANCE(FTMx));

    FTMx->channel[channel].CSC |= FTM_CSC_CHIE;
}

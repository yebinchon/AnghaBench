
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int State; int Instance; } ;
typedef TYPE_1__ FTM_HandleTypeDef ;


 int HAL_FTM_STATE_BUSY ;
 int HAL_FTM_STATE_RESET ;
 int IS_FTM_INSTANCE (int ) ;
 int __HAL_FTM_DISABLE_TOF_IT (TYPE_1__*) ;
 int assert_param (int ) ;

void HAL_FTM_Base_DeInit(FTM_HandleTypeDef *hftm) {
    assert_param(IS_FTM_INSTANCE(hftm->Instance));

    hftm->State = HAL_FTM_STATE_BUSY;

    __HAL_FTM_DISABLE_TOF_IT(hftm);

    hftm->State = HAL_FTM_STATE_RESET;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTM_HandleTypeDef ;


 int HAL_FTM_Base_DeInit (int *) ;

void HAL_FTM_OC_DeInit(FTM_HandleTypeDef *hftm) {
    HAL_FTM_Base_DeInit(hftm);
}

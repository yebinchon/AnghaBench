
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_11__ {int State; TYPE_2__* Instance; } ;
struct TYPE_10__ {int OCPolarity; int Pulse; int OCMode; } ;
struct TYPE_9__ {int POL; TYPE_1__* channel; } ;
struct TYPE_8__ {int CV; int CSC; } ;
typedef TYPE_2__ FTM_TypeDef ;
typedef TYPE_3__ FTM_OC_InitTypeDef ;
typedef TYPE_4__ FTM_HandleTypeDef ;


 int HAL_FTM_STATE_BUSY ;
 int HAL_FTM_STATE_READY ;
 int IS_FTM_CHANNEL (size_t) ;
 int IS_FTM_INSTANCE (TYPE_2__*) ;
 int IS_FTM_OC_MODE (int ) ;
 int IS_FTM_OC_POLARITY (int) ;
 int IS_FTM_OC_PULSE (int ) ;
 int assert_param (int ) ;

void HAL_FTM_OC_ConfigChannel(FTM_HandleTypeDef *hftm, FTM_OC_InitTypeDef* sConfig, uint32_t channel) {
    FTM_TypeDef *FTMx = hftm->Instance;
    assert_param(IS_FTM_INSTANCE(FTMx));
    assert_param(IS_FTM_CHANNEL(channel));
    assert_param(IS_FTM_OC_MODE(sConfig->OCMode));
    assert_param(IS_FTM_OC_PULSE(sConfig->Pulse));
    assert_param(IS_FTM_OC_POLARITY(sConfig->OCPolarity));

    hftm->State = HAL_FTM_STATE_BUSY;

    FTMx->channel[channel].CSC = sConfig->OCMode;
    FTMx->channel[channel].CV = sConfig->Pulse;
    if (sConfig->OCPolarity & 1) {
      FTMx->POL |= (1 << channel);
    } else {
      FTMx->POL &= ~(1 << channel);
    }

    hftm->State = HAL_FTM_STATE_READY;
}

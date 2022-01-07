
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ CounterMode; int PrescalerShift; int Period; } ;
struct TYPE_8__ {int State; TYPE_1__ Init; TYPE_2__* Instance; } ;
struct TYPE_7__ {int SC; int MOD; int MODE; } ;
typedef TYPE_2__ FTM_TypeDef ;
typedef TYPE_3__ FTM_HandleTypeDef ;


 scalar_t__ FTM_COUNTERMODE_CENTER ;
 int FTM_MODE_WPDIS ;
 int FTM_SC_CPWMS ;
 int FTM_SC_PS (int ) ;
 int HAL_FTM_STATE_BUSY ;
 int HAL_FTM_STATE_READY ;
 int IS_FTM_COUNTERMODE (scalar_t__) ;
 int IS_FTM_INSTANCE (TYPE_2__*) ;
 int IS_FTM_PERIOD (int ) ;
 int IS_FTM_PRESCALERSHIFT (int ) ;
 int assert_param (int ) ;

void HAL_FTM_Base_Init(FTM_HandleTypeDef *hftm) {

    FTM_TypeDef *FTMx = hftm->Instance;
    assert_param(IS_FTM_INSTANCE(FTMx));
    assert_param(IS_FTM_PRESCALERSHIFT(hftm->Init.PrescalerShift));
    assert_param(IS_FTM_COUNTERMODE(hftm->Init.CounterMode));
    assert_param(IS_FTM_PERIOD(hftm->Init.Period));

    hftm->State = HAL_FTM_STATE_BUSY;

    FTMx->MODE = FTM_MODE_WPDIS;
    FTMx->SC = 0;
    FTMx->MOD = hftm->Init.Period;
    uint32_t sc = FTM_SC_PS(hftm->Init.PrescalerShift);
    if (hftm->Init.CounterMode == FTM_COUNTERMODE_CENTER) {
      sc |= FTM_SC_CPWMS;
    }
    FTMx->SC = sc;

    hftm->State = HAL_FTM_STATE_READY;
}

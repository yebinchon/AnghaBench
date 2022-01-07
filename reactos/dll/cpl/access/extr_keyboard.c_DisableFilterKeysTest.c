
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {int dwFlags; } ;
struct TYPE_5__ {int dwFlags; } ;
struct TYPE_6__ {TYPE_3__ filterKeys; TYPE_1__ oldFilterKeys; } ;
typedef TYPE_2__* PGLOBAL_DATA ;
typedef int FILTERKEYS ;


 int FKF_FILTERKEYSON ;
 int FKF_INDICATOR ;
 int SPI_SETFILTERKEYS ;
 int SystemParametersInfo (int ,int,TYPE_3__*,int ) ;

__attribute__((used)) static VOID
DisableFilterKeysTest(PGLOBAL_DATA pGlobalData)
{
    if (pGlobalData->oldFilterKeys.dwFlags & FKF_FILTERKEYSON)
    {
        pGlobalData->filterKeys.dwFlags |= FKF_FILTERKEYSON;
    }
    else
    {
        pGlobalData->filterKeys.dwFlags &= ~FKF_FILTERKEYSON;
    }

    if (pGlobalData->oldFilterKeys.dwFlags & FKF_INDICATOR)
    {
        pGlobalData->filterKeys.dwFlags |= FKF_INDICATOR;
    }
    else
    {
        pGlobalData->filterKeys.dwFlags &= ~FKF_INDICATOR;
    }

    SystemParametersInfo(SPI_SETFILTERKEYS,
                         sizeof(FILTERKEYS),
                         &pGlobalData->filterKeys,
                         0);
}

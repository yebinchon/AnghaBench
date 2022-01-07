
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int dwFlags; } ;
struct TYPE_4__ {TYPE_2__ filterKeys; } ;
typedef TYPE_1__* PGLOBAL_DATA ;
typedef int FILTERKEYS ;


 int FKF_FILTERKEYSON ;
 int FKF_INDICATOR ;
 int SPI_SETFILTERKEYS ;
 int SystemParametersInfo (int ,int,TYPE_2__*,int ) ;

__attribute__((used)) static VOID
EnableFilterKeysTest(PGLOBAL_DATA pGlobalData)
{
    pGlobalData->filterKeys.dwFlags |= FKF_FILTERKEYSON;
    pGlobalData->filterKeys.dwFlags &= ~FKF_INDICATOR;

    SystemParametersInfo(SPI_SETFILTERKEYS,
                         sizeof(FILTERKEYS),
                         &pGlobalData->filterKeys,
                         0);
}

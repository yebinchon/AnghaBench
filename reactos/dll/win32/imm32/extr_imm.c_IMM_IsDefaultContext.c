
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int threadDefault; } ;
typedef TYPE_1__ InputContextData ;
typedef int HIMC ;
typedef int BOOL ;


 int FALSE ;
 TYPE_1__* get_imc_data (int ) ;

__attribute__((used)) static BOOL IMM_IsDefaultContext(HIMC imc)
{
    InputContextData *data = get_imc_data(imc);

    if (!data)
        return FALSE;

    return data->threadDefault;
}

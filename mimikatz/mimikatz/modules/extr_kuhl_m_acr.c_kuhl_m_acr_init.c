
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hCard; } ;
typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 TYPE_1__ kuhl_m_acr_Comm ;
 scalar_t__ kuhl_m_acr_hContext ;

NTSTATUS kuhl_m_acr_init()
{
 kuhl_m_acr_hContext = 0;
 kuhl_m_acr_Comm.hCard = 0;
 return STATUS_SUCCESS;
}

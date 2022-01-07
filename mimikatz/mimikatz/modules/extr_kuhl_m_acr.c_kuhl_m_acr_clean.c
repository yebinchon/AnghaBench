
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 int kuhl_m_acr_close (int ,int *) ;

NTSTATUS kuhl_m_acr_clean()
{
 kuhl_m_acr_close(0, ((void*)0));
 return STATUS_SUCCESS;
}

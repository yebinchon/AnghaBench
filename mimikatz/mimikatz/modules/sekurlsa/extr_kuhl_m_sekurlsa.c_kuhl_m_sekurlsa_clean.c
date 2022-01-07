
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cleanLocalLib ) () ;} ;
typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 TYPE_1__* lsassLocalHelper ;
 int stub1 () ;

NTSTATUS kuhl_m_sekurlsa_clean()
{
 NTSTATUS status = STATUS_SUCCESS;
 if(lsassLocalHelper)
 {
  status = lsassLocalHelper->cleanLocalLib();
  lsassLocalHelper = ((void*)0);
 }
 return status;
}

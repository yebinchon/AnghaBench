
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int MIMIKATZ_DRIVER ;
 int STATUS_SUCCESS ;
 int kull_m_service_uninstall (int ) ;

NTSTATUS kuhl_m_kernel_remove_mimidrv(int argc, wchar_t * argv[])
{
 kull_m_service_uninstall(MIMIKATZ_DRIVER);
 return STATUS_SUCCESS;
}

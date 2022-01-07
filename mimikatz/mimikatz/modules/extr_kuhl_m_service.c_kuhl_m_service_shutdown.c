
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int SERVICE_CONTROL_SHUTDOWN ;
 int genericFunction (int ,char*,int,int **,int ) ;
 int kull_m_service_shutdown ;

NTSTATUS kuhl_m_service_shutdown(int argc, wchar_t * argv[])
{
 return genericFunction(kull_m_service_shutdown, L"Shutdown", argc, argv, SERVICE_CONTROL_SHUTDOWN);
}

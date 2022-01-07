
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int SERVICE_CONTROL_PAUSE ;
 int genericFunction (int ,char*,int,int **,int ) ;
 int kull_m_service_suspend ;

NTSTATUS kuhl_m_service_suspend(int argc, wchar_t * argv[])
{
 return genericFunction(kull_m_service_suspend, L"Suspending", argc, argv, SERVICE_CONTROL_PAUSE);
}

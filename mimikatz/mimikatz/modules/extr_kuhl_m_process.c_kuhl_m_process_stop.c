
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int KUHL_M_PROCESS_GENERICOPERATION_TERMINATE ;
 int kuhl_m_process_genericOperation (int,int **,int ) ;

NTSTATUS kuhl_m_process_stop(int argc, wchar_t * argv[])
{
 return kuhl_m_process_genericOperation(argc, argv, KUHL_M_PROCESS_GENERICOPERATION_TERMINATE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int FALSE ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int kuhl_m_token_list_or_elevate (int,int **,int ,int ) ;

NTSTATUS kuhl_m_token_run(int argc, wchar_t * argv[])
{
 kuhl_m_token_list_or_elevate(argc, argv, FALSE, TRUE);
 return STATUS_SUCCESS;
}

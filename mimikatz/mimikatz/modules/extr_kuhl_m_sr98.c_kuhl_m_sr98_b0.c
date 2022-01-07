
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int * PCWCHAR ;
typedef int NTSTATUS ;


 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 int kuhl_m_sr98_b0_descr (int ) ;
 int kull_m_string_args_byName (int,int **,char*,int **,int *) ;
 int wcstoul (int *,int *,int ) ;

NTSTATUS kuhl_m_sr98_b0(int argc, wchar_t * argv[])
{
 PCWCHAR szB0;
 if(argc)
 {
  if(!kull_m_string_args_byName(argc, argv, L"b0", &szB0, ((void*)0)))
   szB0 = argv[0];
  kuhl_m_sr98_b0_descr(wcstoul(szB0, ((void*)0), 0));
 }
 else PRINT_ERROR(L"[/b0:]0x........ argument is needed\n");
 return STATUS_SUCCESS;
}

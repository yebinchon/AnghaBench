
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int * PCWCHAR ;
typedef int NTSTATUS ;


 int * MIMIKATZ_DEFAULT_LOG ;
 int STATUS_SUCCESS ;
 int kprintf (char*,int *,char*) ;
 scalar_t__ kull_m_output_file (int *) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int *,int *) ;

NTSTATUS kuhl_m_standard_log(int argc, wchar_t * argv[])
{
 PCWCHAR filename = (kull_m_string_args_byName(argc, argv, L"stop", ((void*)0), ((void*)0)) ? ((void*)0) : (argc ? argv[0] : MIMIKATZ_DEFAULT_LOG));
 kprintf(L"Using \'%s\' for logfile : %s\n", filename, kull_m_output_file(filename) ? L"OK" : L"KO");
 return STATUS_SUCCESS;
}

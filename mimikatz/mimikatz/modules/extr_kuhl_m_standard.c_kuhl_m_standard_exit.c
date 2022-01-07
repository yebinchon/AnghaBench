
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int STATUS_FATAL_APP_EXIT ;
 int kprintf (char*) ;

NTSTATUS kuhl_m_standard_exit(int argc, wchar_t * argv[])
{
 kprintf(L"Bye!\n");
 return STATUS_FATAL_APP_EXIT;
}

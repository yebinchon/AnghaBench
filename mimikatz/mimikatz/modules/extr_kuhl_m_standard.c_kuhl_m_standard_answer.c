
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 int kprintf (char*) ;

NTSTATUS kuhl_m_standard_answer(int argc, wchar_t * argv[])
{
 kprintf(L"42.\n");
 return STATUS_SUCCESS;
}

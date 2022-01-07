
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 int _wcsdup (int *) ;
 int kprintf (char*,...) ;
 int kuhl_m_sekurlsa_reset () ;
 int pMinidumpName ;

NTSTATUS kuhl_m_sekurlsa_minidump(int argc, wchar_t * argv[])
{
 kprintf(L"Switch to MINIDUMP : ");
 if(argc != 1)
  PRINT_ERROR(L"<minidumpfile.dmp> argument is missing\n");
 else
 {
  kuhl_m_sekurlsa_reset();
  pMinidumpName = _wcsdup(argv[0]);
  kprintf(L"\'%s\'\n", pMinidumpName);
 }
 return STATUS_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int LocalFree (int *) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 scalar_t__ SetCurrentDirectory (int *) ;
 int kprintf (char*,...) ;
 scalar_t__ kull_m_file_getCurrentDirectory (int **) ;

NTSTATUS kuhl_m_standard_cd(int argc, wchar_t * argv[])
{
 wchar_t * buffer;
 if(kull_m_file_getCurrentDirectory(&buffer))
 {
  if(argc)
   kprintf(L"Cur: ");
  kprintf(L"%s\n", buffer);
  LocalFree(buffer);
 }
 else PRINT_ERROR_AUTO(L"kull_m_file_getCurrentDirectory");

 if(argc)
 {
  if(SetCurrentDirectory(argv[0]))
  {
   if(kull_m_file_getCurrentDirectory(&buffer))
   {
    kprintf(L"New: %s\n", buffer);
    LocalFree(buffer);
   }
   else PRINT_ERROR_AUTO(L"kull_m_file_getCurrentDirectory");
  }
  else PRINT_ERROR_AUTO(L"SetCurrentDirectory");
 }
 return STATUS_SUCCESS;
}

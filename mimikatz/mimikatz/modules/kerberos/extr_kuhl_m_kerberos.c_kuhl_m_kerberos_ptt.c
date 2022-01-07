
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int FALSE ;
 int PathFindFileName (int *) ;
 scalar_t__ PathIsDirectory (int *) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,int *) ;
 int kuhl_m_kerberos_ptt_directory (int ,int *,int ,int *) ;
 int kull_m_file_Find (int *,char*,int ,int ,int ,int (*) (int ,int *,int ,int *),int *) ;

NTSTATUS kuhl_m_kerberos_ptt(int argc, wchar_t * argv[])
{
 int i;
 for(i = 0; i < argc; i++)
 {
  if(PathIsDirectory(argv[i]))
  {
   kprintf(L"* Directory: \'%s\'\n", argv[i]);
   kull_m_file_Find(argv[i], L"*.kirbi", FALSE, 0, FALSE, kuhl_m_kerberos_ptt_directory, ((void*)0));
  }
  else kuhl_m_kerberos_ptt_directory(0, argv[i], PathFindFileName(argv[i]), ((void*)0));
 }
 return STATUS_SUCCESS;
}

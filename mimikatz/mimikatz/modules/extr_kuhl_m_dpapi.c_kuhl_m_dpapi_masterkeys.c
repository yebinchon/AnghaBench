
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PKULL_M_DPAPI_MASTERKEYS ;
typedef int PBYTE ;
typedef int NTSTATUS ;
typedef int DWORD ;


 int LocalFree (int ) ;
 int STATUS_SUCCESS ;
 int kull_m_dpapi_masterkeys_create (int ) ;
 int kull_m_dpapi_masterkeys_delete (int ) ;
 int kull_m_dpapi_masterkeys_descr (int ) ;
 scalar_t__ kull_m_file_readData (int *,int *,int *) ;

NTSTATUS kuhl_m_dpapi_masterkeys(int argc, wchar_t * argv[])
{
 PKULL_M_DPAPI_MASTERKEYS masterkeys;
 PBYTE buffer;
 DWORD szBuffer;

 if(argc && kull_m_file_readData(argv[0], &buffer, &szBuffer))
 {
  if(masterkeys = kull_m_dpapi_masterkeys_create(buffer))
  {
   kull_m_dpapi_masterkeys_descr(masterkeys);
   kull_m_dpapi_masterkeys_delete(masterkeys);
  }
  LocalFree(buffer);
 }
 return STATUS_SUCCESS;
}

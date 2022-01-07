
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PKULL_M_DPAPI_MASTERKEY_CREDHIST ;
typedef int LPCVOID ;
typedef int KULL_M_DPAPI_MASTERKEY_CREDHIST ;
typedef int DWORD64 ;


 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int RtlCopyMemory (int *,int ,int) ;

PKULL_M_DPAPI_MASTERKEY_CREDHIST kull_m_dpapi_masterkeys_credhist_create(LPCVOID data, DWORD64 size)
{
 PKULL_M_DPAPI_MASTERKEY_CREDHIST credhist = ((void*)0);
 if(data && (credhist = (PKULL_M_DPAPI_MASTERKEY_CREDHIST) LocalAlloc(LPTR, sizeof(KULL_M_DPAPI_MASTERKEY_CREDHIST))))
  RtlCopyMemory(credhist, data, sizeof(KULL_M_DPAPI_MASTERKEY_CREDHIST));
 return credhist;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_13__ {int cbCred; TYPE_1__* credentials; } ;
struct TYPE_12__ {int size; scalar_t__ key; int type; } ;
typedef TYPE_2__* PVOID ;
typedef TYPE_2__* PKIWI_KRBTGT_CREDENTIALS_64 ;
typedef TYPE_2__* PKIWI_KRBTGT_CREDENTIALS_6 ;
typedef int LPCSTR ;
typedef int KIWI_KRBTGT_CREDENTIAL_64 ;
typedef int KIWI_KRBTGT_CREDENTIAL_6 ;
typedef TYPE_2__ KIWI_KRBTGT_CREDENTIALS_64 ;
typedef TYPE_2__ KIWI_KRBTGT_CREDENTIALS_6 ;
typedef size_t DWORD ;


 scalar_t__ KULL_M_WIN_BUILD_10_1607 ;
 int LPTR ;
 TYPE_2__* LocalAlloc (int ,size_t) ;
 int LocalFree (TYPE_2__*) ;
 scalar_t__ NtBuildNumber ;
 int PtrToLong (int ) ;
 size_t PtrToUlong (int ) ;
 scalar_t__ ReadMemory (int ,TYPE_2__*,size_t,int *) ;
 int dprintf (char*,...) ;
 int kuhl_m_kerberos_ticket_etype (int ) ;
 int kull_m_string_dprintf_hex (TYPE_2__*,size_t,int ) ;

void kuhl_m_sekurlsa_krbtgt_keys(PVOID addr, LPCSTR prefix)
{
 DWORD sizeForCreds, i;
 KIWI_KRBTGT_CREDENTIALS_64 tmpCred64, *creds64;
 KIWI_KRBTGT_CREDENTIALS_6 tmpCred6, *creds6;
 PVOID buffer;

 if(addr)
 {
  dprintf("\n%s krbtgt: ", prefix);
  if(NtBuildNumber < KULL_M_WIN_BUILD_10_1607)
  {
   if(ReadMemory((ULONG_PTR) addr, &tmpCred6, sizeof(KIWI_KRBTGT_CREDENTIALS_6) - sizeof(KIWI_KRBTGT_CREDENTIAL_6), ((void*)0)))
   {
    sizeForCreds = sizeof(KIWI_KRBTGT_CREDENTIALS_6) + (tmpCred6.cbCred - 1) * sizeof(KIWI_KRBTGT_CREDENTIAL_6);
    if(creds6 = (PKIWI_KRBTGT_CREDENTIALS_6) LocalAlloc(LPTR, sizeForCreds))
    {
     if(ReadMemory((ULONG_PTR) addr, creds6, sizeForCreds, ((void*)0)))
     {
      dprintf("%u credentials\n", creds6->cbCred);
      for(i = 0; i < creds6->cbCred; i++)
      {
       dprintf("\t * %s : ", kuhl_m_kerberos_ticket_etype(PtrToLong(creds6->credentials[i].type)));
       if(buffer = LocalAlloc(LPTR, PtrToUlong(creds6->credentials[i].size)))
       {
        if(ReadMemory((ULONG_PTR) creds6->credentials[i].key, buffer, PtrToUlong(creds6->credentials[i].size), ((void*)0)))
         kull_m_string_dprintf_hex(buffer, PtrToUlong(creds6->credentials[i].size), 0);
        LocalFree(buffer);
       }
       dprintf("\n");
      }
     }
     LocalFree(creds6);
    }
   }
  }
  else
  {
   if(ReadMemory((ULONG_PTR) addr, &tmpCred64, sizeof(KIWI_KRBTGT_CREDENTIALS_64) - sizeof(KIWI_KRBTGT_CREDENTIAL_64), ((void*)0)))
   {
    sizeForCreds = sizeof(KIWI_KRBTGT_CREDENTIALS_64) + (tmpCred64.cbCred - 1) * sizeof(KIWI_KRBTGT_CREDENTIAL_64);
    if(creds64 = (PKIWI_KRBTGT_CREDENTIALS_64) LocalAlloc(LPTR, sizeForCreds))
    {
     if(ReadMemory((ULONG_PTR) addr, creds64, sizeForCreds, ((void*)0)))
     {
      dprintf("%u credentials\n", creds64->cbCred);
      for(i = 0; i < creds64->cbCred; i++)
      {
       dprintf("\t * %s : ", kuhl_m_kerberos_ticket_etype(PtrToLong(creds64->credentials[i].type)));
       if(buffer = LocalAlloc(LPTR, PtrToUlong(creds64->credentials[i].size)))
       {
        if(ReadMemory((ULONG_PTR) creds64->credentials[i].key, buffer, PtrToUlong(creds64->credentials[i].size), ((void*)0)))
         kull_m_string_dprintf_hex(buffer, PtrToUlong(creds64->credentials[i].size), 0);
        LocalFree(buffer);
       }
       dprintf("\n");
      }
     }
     LocalFree(creds64);
    }
   }
  }
 }
}

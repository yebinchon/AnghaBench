
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int type; scalar_t__ cbData; int * pbData; } ;
typedef TYPE_1__* PKIWI_CREDENTIAL_KEY ;
typedef int LPCWSTR ;






 int kprintf (char*,...) ;
 int kuhl_m_dpapi_oe_credential_add (int ,int *,int *,int *,int *,int *) ;
 int kull_m_string_wprintf_hex (int *,scalar_t__,int ) ;

VOID kuhl_m_sekurlsa_genericKeyOutput(PKIWI_CREDENTIAL_KEY key, LPCWSTR sid)
{
 if(key && key->cbData)
 {
  switch(key->type)
  {
  case 130:
   kprintf(L"\n\t * NTLM     : ");
   if(sid)
    kuhl_m_dpapi_oe_credential_add(sid, ((void*)0), key->pbData, ((void*)0), ((void*)0), ((void*)0));
   break;
  case 128:
   kprintf(L"\n\t * SHA1     : ");
   if(sid)
    kuhl_m_dpapi_oe_credential_add(sid, ((void*)0), ((void*)0), key->pbData, ((void*)0), ((void*)0));
   break;
  case 129:
   kprintf(L"\n\t * RootKey  : ");
   break;
  case 131:
   kprintf(L"\n\t * DPAPI    : ");
   if(sid)
    kuhl_m_dpapi_oe_credential_add(sid, ((void*)0), ((void*)0), ((void*)0), key->pbData, ((void*)0));
   break;
  default:
   kprintf(L"\n\t * %08x : ", key->type);
  }
  kull_m_string_wprintf_hex(key->pbData, key->cbData, 0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {void* Blink; } ;
struct TYPE_15__ {size_t MasterKeyCount; size_t CredentialCount; size_t DomainKeyCount; TYPE_4__** DomainKeys; TYPE_2__** Credentials; TYPE_1__** MasterKeys; int member_0; } ;
struct TYPE_12__ {TYPE_9__* Flink; void* Blink; } ;
struct TYPE_11__ {int flags; int sid; int guid; } ;
struct TYPE_14__ {TYPE_3__ navigator; TYPE_2__ data; } ;
struct TYPE_13__ {int isNewKey; int keyLen; int key; int guid; } ;
struct TYPE_10__ {int keyHash; int guid; } ;
typedef void* PLIST_ENTRY ;
typedef TYPE_5__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;
typedef int PBYTE ;
typedef int LPCWSTR ;
typedef int KUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;
typedef TYPE_6__ KUHL_M_DPAPI_ENTRIES ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int ) ;
 int PRINT_ERROR_AUTO (char*) ;
 int _wcsdup (int ) ;
 TYPE_9__ gDPAPI_Credentials ;
 int kprintf (char*,...) ;
 int kuhl_m_dpapi_oe_credential_get (int ,int *) ;
 scalar_t__ kuhl_m_dpapi_oe_domainkey_add (int *,int ,int ,int ) ;
 scalar_t__ kuhl_m_dpapi_oe_masterkey_add (int *,int ,int) ;
 scalar_t__ kull_m_dpapi_oe_DecodeDpapiEntries (int ,size_t,TYPE_6__*) ;
 int kull_m_dpapi_oe_FreeDpapiEntries (TYPE_6__*) ;
 scalar_t__ kull_m_file_readData (int ,int *,size_t*) ;

BOOL kuhl_m_dpapi_oe_LoadFromFile(LPCWSTR filename)
{
 BOOL status = FALSE;
 PBYTE dataIn;
 DWORD i, j, dwDataIn;
 KUHL_M_DPAPI_ENTRIES entries = {0};
 PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY crEntry;

 kprintf(L"Read file \'%s\': ", filename);
 if(kull_m_file_readData(filename, &dataIn, &dwDataIn))
 {
  kprintf(L"OK\n");
  if(kull_m_dpapi_oe_DecodeDpapiEntries(dataIn, dwDataIn, &entries))
  {
   for(i = 0, j = 0; i < entries.MasterKeyCount; i++)
    if(kuhl_m_dpapi_oe_masterkey_add(&entries.MasterKeys[i]->guid, entries.MasterKeys[i]->keyHash, sizeof(entries.MasterKeys[i]->keyHash)))
     j++;
   kprintf(L" * %3u/%3u MasterKey(s) imported\n", j, entries.MasterKeyCount);

   for(i = 0, j = 0; i < entries.CredentialCount; i++)
   {
    if(!kuhl_m_dpapi_oe_credential_get(entries.Credentials[i]->sid, (entries.Credentials[i]->flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID) ? &entries.Credentials[i]->guid : ((void*)0)))
    {
     if(crEntry = (PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) LocalAlloc(LPTR, sizeof(KUHL_M_DPAPI_OE_CREDENTIAL_ENTRY)))
     {
      crEntry->data = *entries.Credentials[i];
      crEntry->data.sid = _wcsdup(entries.Credentials[i]->sid);
      crEntry->navigator.Blink = gDPAPI_Credentials.Blink;
      crEntry->navigator.Flink = &gDPAPI_Credentials;
      ((PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) gDPAPI_Credentials.Blink)->navigator.Flink = (PLIST_ENTRY) crEntry;
      gDPAPI_Credentials.Blink= (PLIST_ENTRY) crEntry;
      j++;
     }
    }
   }
   kprintf(L" * %3u/%3u Credential(s) imported\n", j, entries.CredentialCount);

   for(i = 0, j = 0; i < entries.DomainKeyCount; i++)
    if(kuhl_m_dpapi_oe_domainkey_add(&entries.DomainKeys[i]->guid, entries.DomainKeys[i]->key, entries.DomainKeys[i]->keyLen, entries.DomainKeys[i]->isNewKey))
     j++;
   kprintf(L" * %3u/%3u DomainKey(s) imported\n", j, entries.DomainKeyCount);
   kull_m_dpapi_oe_FreeDpapiEntries(&entries);
  }
  LocalFree(dataIn);
 }
 else PRINT_ERROR_AUTO(L"kull_m_file_readData");

 return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {void* Blink; } ;
struct TYPE_6__ {TYPE_4__* Flink; void* Blink; } ;
struct TYPE_5__ {int keyLen; int * key; int isNewKey; int guid; } ;
struct TYPE_7__ {TYPE_2__ navigator; TYPE_1__ data; } ;
typedef void* PLIST_ENTRY ;
typedef TYPE_3__* PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY ;
typedef int LPCVOID ;
typedef int LPCGUID ;
typedef int KUHL_M_DPAPI_OE_DOMAINKEY_ENTRY ;
typedef int GUID ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int PRINT_ERROR (char*) ;
 int RtlCopyMemory (int *,int ,int) ;
 int TRUE ;
 TYPE_4__ gDPAPI_Domainkeys ;
 int kuhl_m_dpapi_oe_domainkey_get (int ) ;

BOOL kuhl_m_dpapi_oe_domainkey_add(LPCGUID guid, LPCVOID key, DWORD keyLen, BOOL isNewKey)
{
 BOOL status = FALSE;
 PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY entry;
 if(guid && key && keyLen)
 {
  if(!kuhl_m_dpapi_oe_domainkey_get(guid))
  {
   if(entry = (PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) LocalAlloc(LPTR, sizeof(KUHL_M_DPAPI_OE_DOMAINKEY_ENTRY)))
   {
    RtlCopyMemory(&entry->data.guid, guid, sizeof(GUID));
    entry->data.isNewKey = isNewKey;
    if(entry->data.key = (BYTE *) LocalAlloc(LPTR, keyLen))
    {
     RtlCopyMemory(entry->data.key, key, keyLen);
     entry->data.keyLen = keyLen;
     status = TRUE;
    }
    entry->navigator.Blink = gDPAPI_Domainkeys.Blink;
    entry->navigator.Flink = &gDPAPI_Domainkeys;
    ((PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) gDPAPI_Domainkeys.Blink)->navigator.Flink = (PLIST_ENTRY) entry;
    gDPAPI_Domainkeys.Blink= (PLIST_ENTRY) entry;
   }
  }
 }
 else PRINT_ERROR(L"No GUID or Key?");
 return status;
}

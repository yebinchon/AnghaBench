
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int digest ;
struct TYPE_8__ {void* Blink; } ;
struct TYPE_6__ {TYPE_4__* Flink; void* Blink; } ;
struct TYPE_5__ {int * keyHash; int guid; } ;
struct TYPE_7__ {TYPE_2__ navigator; TYPE_1__ data; } ;
typedef void* PLIST_ENTRY ;
typedef TYPE_3__* PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY ;
typedef int * LPCVOID ;
typedef int * LPCGUID ;
typedef int KUHL_M_DPAPI_OE_MASTERKEY_ENTRY ;
typedef int GUID ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CALG_SHA1 ;
 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int PRINT_ERROR (char*) ;
 int RtlCopyMemory (int *,int *,int) ;
 int SHA_DIGEST_LENGTH ;
 int TRUE ;
 TYPE_4__ gDPAPI_Masterkeys ;
 int kuhl_m_dpapi_oe_masterkey_get (int *) ;
 int kull_m_crypto_hash (int ,int *,int,int *,int) ;

BOOL kuhl_m_dpapi_oe_masterkey_add(LPCGUID guid, LPCVOID keyHash, DWORD keyLen)
{
 BOOL status = FALSE;
 PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY entry;
 BYTE digest[SHA_DIGEST_LENGTH];

 if(guid && keyHash && keyLen)
 {
  if(!kuhl_m_dpapi_oe_masterkey_get(guid))
  {
   if(keyLen != SHA_DIGEST_LENGTH)
    kull_m_crypto_hash(CALG_SHA1, keyHash, keyLen, digest, sizeof(digest));

   if(entry = (PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) LocalAlloc(LPTR, sizeof(KUHL_M_DPAPI_OE_MASTERKEY_ENTRY)))
   {
    RtlCopyMemory(&entry->data.guid, guid, sizeof(GUID));
    RtlCopyMemory(entry->data.keyHash, (keyLen == SHA_DIGEST_LENGTH) ? keyHash : digest, SHA_DIGEST_LENGTH);
    entry->navigator.Blink = gDPAPI_Masterkeys.Blink;
    entry->navigator.Flink = &gDPAPI_Masterkeys;
    ((PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) gDPAPI_Masterkeys.Blink)->navigator.Flink = (PLIST_ENTRY) entry;
    gDPAPI_Masterkeys.Blink= (PLIST_ENTRY) entry;
    status = TRUE;
   }
  }
 }
 else PRINT_ERROR(L"No GUID or Key Hash?");
 return status;
}

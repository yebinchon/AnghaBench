
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_5__ {scalar_t__ size; int dwPropId; scalar_t__ data; int flags; } ;
struct TYPE_4__ {int offsetRgProvParam; int cProvParam; int dwFlags; int dwKeySpec; int dwProvType; scalar_t__ offsetProvName; scalar_t__ offsetContainerName; } ;
typedef TYPE_1__* PKUHL_M_CRYPTO_CRYPT_KEY_PROV_INFO ;
typedef TYPE_2__* PKUHL_M_CRYPTO_CERT_PROP ;
typedef char* PCWCHAR ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;
 int FALSE ;
 scalar_t__ FIELD_OFFSET (int ,scalar_t__) ;
 int KUHL_M_CRYPTO_CERT_PROP ;
 int kprintf (char*,...) ;
 int kuhl_m_crypto_file_rawData (TYPE_2__*,char*,int ) ;
 char* kull_m_crypto_cert_prop_id_to_name (int) ;
 int kull_m_crypto_keytype_to_str (int ) ;
 char* kull_m_crypto_provider_type_to_name (int ) ;
 int kull_m_string_wprintf_hex (scalar_t__,int,int ) ;

BOOL kuhl_m_crypto_system_data(PBYTE data, DWORD len, PCWCHAR originalName, BOOL isExport)
{
 BOOL status = FALSE;
 PCWCHAR name;
 PKUHL_M_CRYPTO_CERT_PROP prop;
 PKUHL_M_CRYPTO_CRYPT_KEY_PROV_INFO provInfo;

 for(prop = (PKUHL_M_CRYPTO_CERT_PROP) data; (PBYTE) prop < (data + len); prop = (PKUHL_M_CRYPTO_CERT_PROP) ((PBYTE) prop + FIELD_OFFSET(KUHL_M_CRYPTO_CERT_PROP, data) + prop->size))
 {
  name = kull_m_crypto_cert_prop_id_to_name(prop->dwPropId);
  kprintf(L"[%04x/%x] %s\n", prop->dwPropId, prop->flags, name ? name : L"?");
  if(prop->size)
  {
   kprintf(L"  ");
   switch(prop->dwPropId)
   {
   case 138:
    kprintf(L"Provider info:\n");
    provInfo = (PKUHL_M_CRYPTO_CRYPT_KEY_PROV_INFO) prop->data;
    if(provInfo->offsetContainerName)
     kprintf(L"\tKey Container  : %s\n", prop->data + provInfo->offsetContainerName);
    if(provInfo->offsetProvName)
     kprintf(L"\tProvider       : %s\n", prop->data + provInfo->offsetProvName);
    name = kull_m_crypto_provider_type_to_name(provInfo->dwProvType);
    kprintf(L"\tProvider type  : %s (%u)\n", name ? name : L"?", provInfo->dwProvType);
    kprintf(L"\tType           : %s (0x%08x)\n", kull_m_crypto_keytype_to_str(provInfo->dwKeySpec), provInfo->dwKeySpec);
    kprintf(L"\tFlags          : %08x\n", provInfo->dwFlags);
    kprintf(L"\tParam (todo)   : %08x / %08x\n", provInfo->cProvParam, provInfo->offsetRgProvParam);
    break;
   case 142:
   case 136:
   case 101:
    kprintf(L"%.*s", prop->size / sizeof(wchar_t), prop->data);
    break;
   case 131:
   case 130:
   case 129:
   case 128:
    kuhl_m_crypto_file_rawData(prop, originalName, isExport);
    break;
   case 135:
   case 137 :
   case 134:
   case 141:
   case 132:
   case 140:
   case 133:
   case 139:

   default:
    kull_m_string_wprintf_hex(prop->data, prop->size, 0);
    break;
   }
   kprintf(L"\n");
  }
 }

 return status;
}

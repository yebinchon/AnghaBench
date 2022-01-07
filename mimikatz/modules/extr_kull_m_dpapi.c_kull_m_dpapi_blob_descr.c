
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwSignLen; int pbSign; int dwDataLen; int pbData; int dwHmac2KeyLen; int pbHmack2Key; int dwAlgHashLen; int algHash; int dwHmacKeyLen; int pbHmackKey; int dwSaltLen; int pbSalt; int dwAlgCryptLen; int algCrypt; int szDescription; int dwDescriptionLen; int dwFlags; int guidMasterKey; int dwMasterKeyVersion; int guidProvider; int dwVersion; } ;
typedef TYPE_1__* PKULL_M_DPAPI_BLOB ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_crypto_algid_to_name (int ) ;
 int kull_m_dpapi_displayBlobFlags (int ) ;
 int kull_m_string_displayGUID (int *) ;
 int kull_m_string_wprintf_hex (int ,int ,int ) ;

void kull_m_dpapi_blob_descr(DWORD level, PKULL_M_DPAPI_BLOB blob)
{
 kprintf(L"%*s" L"**BLOB**\n", level << 1, L"");
 if(blob)
 {
  kprintf(L"%*s" L"  dwVersion          : %08x - %u\n", level << 1, L"", blob->dwVersion, blob->dwVersion);
  kprintf(L"%*s" L"  guidProvider       : ", level << 1, L""); kull_m_string_displayGUID(&blob->guidProvider); kprintf(L"\n");
  kprintf(L"%*s" L"  dwMasterKeyVersion : %08x - %u\n", level << 1, L"", blob->dwMasterKeyVersion, blob->dwMasterKeyVersion);
  kprintf(L"%*s" L"  guidMasterKey      : ", level << 1, L""); kull_m_string_displayGUID(&blob->guidMasterKey); kprintf(L"\n");
  kprintf(L"%*s" L"  dwFlags            : %08x - %u (", level << 1, L"", blob->dwFlags, blob->dwFlags);
  kull_m_dpapi_displayBlobFlags(blob->dwFlags);
  kprintf(L")\n");
  kprintf(L"%*s" L"  dwDescriptionLen   : %08x - %u\n", level << 1, L"", blob->dwDescriptionLen, blob->dwDescriptionLen);
  kprintf(L"%*s" L"  szDescription      : %s\n", level << 1, L"", blob->szDescription);
  kprintf(L"%*s" L"  algCrypt           : %08x - %u (%s)\n", level << 1, L"", blob->algCrypt, blob->algCrypt, kull_m_crypto_algid_to_name(blob->algCrypt));
  kprintf(L"%*s" L"  dwAlgCryptLen      : %08x - %u\n", level << 1, L"", blob->dwAlgCryptLen, blob->dwAlgCryptLen);
  kprintf(L"%*s" L"  dwSaltLen          : %08x - %u\n", level << 1, L"", blob->dwSaltLen, blob->dwSaltLen);
  kprintf(L"%*s" L"  pbSalt             : ", level << 1, L""); kull_m_string_wprintf_hex(blob->pbSalt, blob->dwSaltLen, 0); kprintf(L"\n");
  kprintf(L"%*s" L"  dwHmacKeyLen       : %08x - %u\n", level << 1, L"", blob->dwHmacKeyLen, blob->dwHmacKeyLen);
  kprintf(L"%*s" L"  pbHmackKey         : ", level << 1, L""); kull_m_string_wprintf_hex(blob->pbHmackKey, blob->dwHmacKeyLen, 0); kprintf(L"\n");
  kprintf(L"%*s" L"  algHash            : %08x - %u (%s)\n", level << 1, L"", blob->algHash, blob->algHash, kull_m_crypto_algid_to_name(blob->algHash));
  kprintf(L"%*s" L"  dwAlgHashLen       : %08x - %u\n", level << 1, L"", blob->dwAlgHashLen, blob->dwAlgHashLen);
  kprintf(L"%*s" L"  dwHmac2KeyLen      : %08x - %u\n", level << 1, L"", blob->dwHmac2KeyLen, blob->dwHmac2KeyLen);
  kprintf(L"%*s" L"  pbHmack2Key        : ", level << 1, L""); kull_m_string_wprintf_hex(blob->pbHmack2Key, blob->dwHmac2KeyLen, 0); kprintf(L"\n");
  kprintf(L"%*s" L"  dwDataLen          : %08x - %u\n", level << 1, L"", blob->dwDataLen, blob->dwDataLen);
  kprintf(L"%*s" L"  pbData             : ", level << 1, L""); kull_m_string_wprintf_hex(blob->pbData, blob->dwDataLen, 0); kprintf(L"\n");
  kprintf(L"%*s" L"  dwSignLen          : %08x - %u\n", level << 1, L"", blob->dwSignLen, blob->dwSignLen);
  kprintf(L"%*s" L"  pbSign             : ", level << 1, L""); kull_m_string_wprintf_hex(blob->pbSign, blob->dwSignLen, 0); kprintf(L"\n\n");
 }
}

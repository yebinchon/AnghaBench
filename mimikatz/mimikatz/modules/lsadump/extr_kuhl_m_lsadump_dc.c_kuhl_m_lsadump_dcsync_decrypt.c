
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PBYTE ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int LM_NTLM_HASH_LENGTH ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*) ;
 int RtlDecryptDES2blocks1DWORD (scalar_t__,int*,int *) ;
 int kprintf (char*,...) ;
 int kull_m_string_wprintf_hex (int *,int,int ) ;

BOOL kuhl_m_lsadump_dcsync_decrypt(PBYTE encodedData, DWORD encodedDataSize, DWORD rid, LPCWSTR prefix, BOOL isHistory)
{
 DWORD i;
 BOOL status = FALSE;
 BYTE data[LM_NTLM_HASH_LENGTH];
 for(i = 0; i < encodedDataSize; i += LM_NTLM_HASH_LENGTH)
 {
  status = NT_SUCCESS(RtlDecryptDES2blocks1DWORD(encodedData + i, &rid, data));
  if(status)
  {
   if(isHistory)
    kprintf(L"    %s-%2u: ", prefix, i / LM_NTLM_HASH_LENGTH);
   else
    kprintf(L"  Hash %s: ", prefix);
   kull_m_string_wprintf_hex(data, LM_NTLM_HASH_LENGTH, 0);
   kprintf(L"\n");
  }
  else PRINT_ERROR(L"RtlDecryptDES2blocks1DWORD");
 }
 return status;
}

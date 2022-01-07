
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ PBYTE ;
typedef int NTSTATUS ;
typedef scalar_t__ LPWSTR ;
typedef int LPVOID ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int LocalFree (scalar_t__) ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 scalar_t__ _wcsicmp (scalar_t__,char*) ;
 int kprintf (char*,...) ;
 scalar_t__ kuhl_m_dpapi_unprotect_raw_or_blob (scalar_t__,int ,int *,int,int **,int *,int ,int *,int *,int *) ;
 int kull_m_dpapi_blob_quick_descr (int ,scalar_t__) ;
 scalar_t__ kull_m_file_readData (int ,scalar_t__*,int *) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int *,int *) ;
 scalar_t__ kull_m_string_qad_ansi_to_unicode (char const*) ;
 scalar_t__ kull_m_string_quickxml_simplefind (scalar_t__,char*,scalar_t__*) ;
 scalar_t__ kull_m_string_stringToHexBuffer (scalar_t__,scalar_t__*,int *) ;
 int kull_m_string_wprintf_hex (scalar_t__,int ,int ) ;

NTSTATUS kuhl_m_dpapi_wifi(int argc, wchar_t * argv[])
{
 PBYTE pFile, hex, dataOut;
 DWORD dwData, lenHex, lenDataOut;
 LPWSTR dataU, dataSSID, dataF, dataAuth;
 LPCWSTR infile;

 if(kull_m_string_args_byName(argc, argv, L"in", &infile, ((void*)0)))
 {
  if(kull_m_file_readData(infile, &pFile, &dwData))
  {
   if(dataU = kull_m_string_qad_ansi_to_unicode((const char *) pFile))
   {
    if(kull_m_string_quickxml_simplefind(dataU, L"name", &dataF))
    {
     kprintf(L"Profile \'%s\'\n\n", dataF);
     LocalFree(dataF);
    }
    if(kull_m_string_quickxml_simplefind(dataU, L"SSID", &dataSSID))
    {
     kprintf(L" * SSID ");
     if(kull_m_string_quickxml_simplefind(dataSSID, L"name", &dataF))
     {
      kprintf(L"name     : %s\n", dataF);
      LocalFree(dataF);
     }
     else if(kull_m_string_quickxml_simplefind(dataSSID, L"hex", &dataF))
     {
      kprintf(L"hex      : %s\n", dataF);
      LocalFree(dataF);
     }
     else kprintf(L"?\n");
     LocalFree(dataSSID);
    }
    if(kull_m_string_quickxml_simplefind(dataU, L"authentication", &dataAuth))
    {
     kprintf(L" * Authentication: %s\n", dataAuth);
     if(kull_m_string_quickxml_simplefind(dataU, L"encryption", &dataF))
     {
      kprintf(L" * Encryption    : %s\n", dataF);
      LocalFree(dataF);
     }
     if(kull_m_string_quickxml_simplefind(dataU, L"keyMaterial", &dataF))
     {
      if(kull_m_string_stringToHexBuffer(dataF, &hex, &lenHex))
      {
       kprintf(L"\n");
       kull_m_dpapi_blob_quick_descr(0, hex);
       if(kuhl_m_dpapi_unprotect_raw_or_blob(hex, lenHex, ((void*)0), argc, argv, ((void*)0), 0, (LPVOID *) &dataOut, &lenDataOut, ((void*)0)))
       {
        kprintf(L" * Key Material  : ");
        if(_wcsicmp(dataAuth, L"WEP") == 0)
        {
         kprintf(L"(hex) ");
         kull_m_string_wprintf_hex(dataOut, lenDataOut, 0);
        }
        else
         kprintf(L"%.*S", lenDataOut, dataOut);
        kprintf(L"\n");
        LocalFree(dataOut);
       }
       LocalFree(hex);
      }
      LocalFree(dataF);
     }
     LocalFree(dataAuth);
    }
    LocalFree(dataU);
   }
   LocalFree(pFile);
  }
  else PRINT_ERROR_AUTO(L"kull_m_file_readData");
 }
 else PRINT_ERROR(L"Input Wlan XML profile needed (/in:file)\n");
 return STATUS_SUCCESS;
}

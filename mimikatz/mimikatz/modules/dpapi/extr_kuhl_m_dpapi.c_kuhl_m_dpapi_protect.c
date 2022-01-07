
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_8__ {int member_0; int dwPromptFlags; int * member_3; int * member_2; int member_1; } ;
struct TYPE_7__ {int cbData; scalar_t__ pbData; int * member_1; int member_0; } ;
typedef int PKULL_M_DPAPI_BLOB ;
typedef char* PCWSTR ;
typedef int NTSTATUS ;
typedef int DWORD ;
typedef TYPE_1__ DATA_BLOB ;
typedef TYPE_2__ CRYPTPROTECT_PROMPTSTRUCT ;


 int CRYPTPROTECT_LOCAL_MACHINE ;
 int CRYPTPROTECT_PROMPT_ON_PROTECT ;
 int CRYPTPROTECT_SYSTEM ;
 scalar_t__ CryptProtectData (TYPE_1__*,char*,TYPE_1__*,int *,TYPE_2__*,int,TYPE_1__*) ;
 int LocalFree (scalar_t__) ;
 int * MIMIKATZ ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kull_m_dpapi_blob_create (scalar_t__) ;
 int kull_m_dpapi_blob_delete (int ) ;
 int kull_m_dpapi_blob_descr (int ,int ) ;
 int kull_m_dpapi_displayPromptFlags (int ) ;
 int kull_m_dpapi_displayProtectionFlags (int) ;
 scalar_t__ kull_m_file_writeData (char*,scalar_t__,int) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,char**,int *) ;
 int kull_m_string_stringToHexBuffer (char*,scalar_t__*,int*) ;
 int kull_m_string_wprintf_hex (scalar_t__,int,int) ;
 int wcslen (char*) ;

NTSTATUS kuhl_m_dpapi_protect(int argc, wchar_t * argv[])
{
 DATA_BLOB dataIn, dataOut, dataEntropy = {0, ((void*)0)};
 PKULL_M_DPAPI_BLOB blob;
 PCWSTR description = ((void*)0), szEntropy, outfile;
 CRYPTPROTECT_PROMPTSTRUCT promptStructure = {sizeof(CRYPTPROTECT_PROMPTSTRUCT), CRYPTPROTECT_PROMPT_ON_PROTECT, ((void*)0), MIMIKATZ}, *pPrompt;
 DWORD flags = 0, outputMode = 1;

 kull_m_string_args_byName(argc, argv, L"data", (PCWSTR *) &dataIn.pbData, MIMIKATZ);
 kull_m_string_args_byName(argc, argv, L"description", &description, ((void*)0));
 if(kull_m_string_args_byName(argc, argv, L"entropy", &szEntropy, ((void*)0)))
  kull_m_string_stringToHexBuffer(szEntropy, &dataEntropy.pbData, &dataEntropy.cbData);
 if(kull_m_string_args_byName(argc, argv, L"machine", ((void*)0), ((void*)0)))
  flags |= CRYPTPROTECT_LOCAL_MACHINE;
 if(kull_m_string_args_byName(argc, argv, L"system", ((void*)0), ((void*)0)))
  flags |= CRYPTPROTECT_SYSTEM;
 pPrompt = kull_m_string_args_byName(argc, argv, L"prompt", ((void*)0), ((void*)0)) ? &promptStructure : ((void*)0);

 if(kull_m_string_args_byName(argc, argv, L"c", ((void*)0), ((void*)0)))
  outputMode = 2;

 kprintf(L"\ndata        : %s\n", dataIn.pbData);
 kprintf(L"description : %s\n", description ? description : L"");
 kprintf(L"flags       : "); kull_m_dpapi_displayProtectionFlags(flags); kprintf(L"\n");
 kprintf(L"prompt flags: "); if(pPrompt) kull_m_dpapi_displayPromptFlags(pPrompt->dwPromptFlags); kprintf(L"\n");
 kprintf(L"entropy     : "); kull_m_string_wprintf_hex(dataEntropy.pbData, dataEntropy.cbData, 0); kprintf(L"\n\n");

 dataIn.cbData = (DWORD) ((wcslen((PCWSTR) dataIn.pbData) + 1) * sizeof(wchar_t));
 if(CryptProtectData(&dataIn, description, &dataEntropy, ((void*)0), pPrompt, flags, &dataOut))
 {
  if(blob = kull_m_dpapi_blob_create(dataOut.pbData))
  {
   kull_m_dpapi_blob_descr(0, blob);
   kull_m_dpapi_blob_delete(blob);
  }
  kprintf(L"\n");
  if(kull_m_string_args_byName(argc, argv, L"out", &outfile, ((void*)0)))
  {
   if(kull_m_file_writeData(outfile, dataOut.pbData, dataOut.cbData))
    kprintf(L"Write to file \'%s\' is OK\n", outfile);
  }
  else
  {
   kprintf(L"Blob:\n");
   kull_m_string_wprintf_hex(dataOut.pbData, dataOut.cbData, outputMode | (16 << 16));
   kprintf(L"\n");
  }
  LocalFree(dataOut.pbData);
 }
 else PRINT_ERROR_AUTO(L"CryptProtectData");

 if(dataEntropy.pbData)
  LocalFree(dataEntropy.pbData);

 return STATUS_SUCCESS;
}

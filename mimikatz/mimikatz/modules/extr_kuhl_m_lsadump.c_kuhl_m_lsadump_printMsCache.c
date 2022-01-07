
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void* Buffer; int MaximumLength; int Length; } ;
struct TYPE_7__ {int MaximumLength; int Length; void* Buffer; } ;
struct TYPE_11__ {TYPE_2__ UserName; TYPE_1__ Domain; } ;
struct TYPE_10__ {int mshashdata; } ;
struct TYPE_9__ {scalar_t__ enc_data; int szDomainName; int szUserName; } ;
typedef void* PWSTR ;
typedef TYPE_3__* PMSCACHE_ENTRY ;
typedef TYPE_4__* PMSCACHE_DATA ;
typedef scalar_t__ PBYTE ;
typedef TYPE_5__ MSCACHE_ENTRY_PTR ;
typedef int MSCACHE_DATA ;
typedef int CHAR ;


 int LM_NTLM_HASH_LENGTH ;
 scalar_t__ SIZE_ALIGN (int ,int) ;
 int kprintf (char*,...) ;
 int kull_m_string_wprintf_hex (int ,int ,int ) ;

void kuhl_m_lsadump_printMsCache(PMSCACHE_ENTRY entry, CHAR version)
{

 MSCACHE_ENTRY_PTR ptr;
 ptr.UserName.Buffer = (PWSTR) ((PBYTE) entry->enc_data + sizeof(MSCACHE_DATA));
 ptr.UserName.Length = ptr.UserName.MaximumLength = entry->szUserName;
 ptr.Domain.Buffer = (PWSTR) ((PBYTE) ptr.UserName.Buffer + SIZE_ALIGN(entry->szUserName, 4));
 ptr.Domain.Length = ptr.Domain.MaximumLength = entry->szDomainName;
 kprintf(L"User      : %wZ\\%wZ\n", &ptr.Domain, &ptr.UserName);
 kprintf(L"MsCacheV%c : ", version); kull_m_string_wprintf_hex(((PMSCACHE_DATA) entry->enc_data)->mshashdata, LM_NTLM_HASH_LENGTH, 0); kprintf(L"\n");
}

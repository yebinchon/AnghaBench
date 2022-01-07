
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t USHORT ;
struct TYPE_4__ {int KeyLength; scalar_t__ KeyOffset; int IterationCount; int KeyType; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PKERB_KEY_DATA_NEW ;
typedef scalar_t__ PCWSTR ;
typedef scalar_t__ PBYTE ;
typedef int KERB_KEY_DATA_NEW ;


 int kprintf (char*,...) ;
 int kuhl_m_kerberos_ticket_etype (int ) ;
 int kull_m_string_wprintf_hex (scalar_t__,int ,int ) ;

PKERB_KEY_DATA_NEW kuhl_m_lsadump_lsa_keyDataNewInfo(PVOID base, PKERB_KEY_DATA_NEW keys, USHORT Count, PCWSTR title)
{
 USHORT i;
 if(Count)
 {
  if(title)
   kprintf(L"    %s\n", title);
  for(i = 0; i < Count; i++)
  {
   kprintf(L"      %s (%u) : ", kuhl_m_kerberos_ticket_etype(keys[i].KeyType), keys->IterationCount);
   kull_m_string_wprintf_hex((PBYTE) base + keys[i].KeyOffset, keys[i].KeyLength, 0);
   kprintf(L"\n");
  }
 }
 return (PKERB_KEY_DATA_NEW) ((PBYTE) keys + Count * sizeof(KERB_KEY_DATA_NEW));
}

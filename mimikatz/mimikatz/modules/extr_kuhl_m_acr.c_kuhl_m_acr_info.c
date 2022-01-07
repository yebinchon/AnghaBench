
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_6__ {int SEL_RES; int ATSLength; int ATS; int NFCIDLength; int NFCID1; int SENS_RES; } ;
struct TYPE_7__ {TYPE_1__ TypeA; } ;
struct TYPE_8__ {size_t BrTy; TYPE_2__ Target; int Tg; } ;
typedef TYPE_3__* PPN532_TARGET ;
typedef int * PBYTE ;
typedef int NTSTATUS ;
typedef size_t BYTE ;


 size_t ARRAYSIZE (char**) ;
 char** KUHL_M_ACR_PN532_BrTy ;
 int LocalFree (TYPE_3__*) ;
 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kuhl_m_acr_pn532Comm ;
 scalar_t__ kull_m_pn532_InListPassiveTarget (int *,int,int ,int *,int ,size_t*,TYPE_3__**) ;
 int kull_m_pn532_InRelease (int *,int ) ;
 int kull_m_string_wprintf_hex (int ,int ,int) ;

NTSTATUS kuhl_m_acr_info(int argc, wchar_t * argv[])
{
 BYTE i, NbTg;
 PPN532_TARGET pTargets;

 kull_m_pn532_InRelease(&kuhl_m_acr_pn532Comm, 0);
 if(kull_m_pn532_InListPassiveTarget(&kuhl_m_acr_pn532Comm, 2, 0 , ((void*)0), 0, &NbTg, &pTargets))
 {
  for(i = 0; i < NbTg; i++)
  {
   kprintf(L"\nTarget: %hhu (0x%02x - %s)\n", pTargets[i].Tg, pTargets[i].BrTy, (pTargets[i].BrTy < ARRAYSIZE(KUHL_M_ACR_PN532_BrTy)) ? KUHL_M_ACR_PN532_BrTy[pTargets[i].BrTy] : L"?");
   switch(pTargets[i].BrTy)
   {
   case 0:
    kprintf(L"  SENS_RES: %02x %02x\n  SEL_RES : %02x\n    UID %scomplete\n    PICC %scompliant with ISO/IEC 14443-4\n    PICC %scompliant with ISO/IEC 18092 (NFC)\n",
     ((PBYTE) &pTargets[i].Target.TypeA.SENS_RES)[0], ((PBYTE) &pTargets[i].Target.TypeA.SENS_RES)[1], pTargets[i].Target.TypeA.SEL_RES, (pTargets[i].Target.TypeA.SEL_RES & 0x04) ? L"NOT " : L"", (pTargets[i].Target.TypeA.SEL_RES & 0x20) ? L"" : L"NOT ", (pTargets[i].Target.TypeA.SEL_RES & 0x40) ? L"" : L"NOT ");
    if(pTargets[i].Target.TypeA.NFCIDLength && pTargets[i].Target.TypeA.NFCID1)
    {
     kprintf(L"  NFCID1  : ");
     kull_m_string_wprintf_hex(pTargets[i].Target.TypeA.NFCID1, pTargets[i].Target.TypeA.NFCIDLength, 1);
     kprintf(L"\n");
    }
    if(pTargets[i].Target.TypeA.ATSLength && pTargets[i].Target.TypeA.ATS)
    {
     kprintf(L"  ATS     : ");
     kull_m_string_wprintf_hex(pTargets[i].Target.TypeA.ATS, pTargets[i].Target.TypeA.ATSLength, 1);
     kprintf(L"\n");
    }
    break;
   default:
    PRINT_ERROR(L"Only BrTy = 0 (TypeA) at this time\n");
   }
  }
  LocalFree(pTargets);
 }
 kull_m_pn532_InRelease(&kuhl_m_acr_pn532Comm, 0);
 return STATUS_SUCCESS;
}

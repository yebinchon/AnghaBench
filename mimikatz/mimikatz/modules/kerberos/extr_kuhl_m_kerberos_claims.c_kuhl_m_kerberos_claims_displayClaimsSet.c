
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_17__ {size_t ulClaimsArrayCount; TYPE_7__* ClaimsArrays; } ;
struct TYPE_16__ {size_t usClaimsSourceType; size_t ulClaimsCount; TYPE_6__* ClaimEntries; } ;
struct TYPE_13__ {size_t* BooleanValues; } ;
struct TYPE_12__ {size_t* StringValues; } ;
struct TYPE_11__ {size_t* Uint64Values; } ;
struct TYPE_10__ {size_t ValueCount; size_t* Int64Values; } ;
struct TYPE_14__ {TYPE_4__ cb; TYPE_3__ cs; TYPE_2__ cui64; TYPE_1__ ci64; } ;
struct TYPE_15__ {size_t Id; int Type; TYPE_5__ Values; } ;
typedef TYPE_8__* PCLAIMS_SET ;
typedef size_t DWORD ;






 int kprintf (char*,size_t) ;

void kuhl_m_kerberos_claims_displayClaimsSet(PCLAIMS_SET claimsSet)
{
 DWORD j, k, l;
 for(j = 0; j < claimsSet->ulClaimsArrayCount; j++)
 {
  kprintf(L"Claims[%u]\n", j);
  kprintf(L"  SourceType: %hu\n", claimsSet->ClaimsArrays[j].usClaimsSourceType);
  for(k = 0; k < claimsSet->ClaimsArrays[j].ulClaimsCount; k++)
  {
   kprintf(L"  Entries[%u]\n", k);
   kprintf(L"    Id: %s\n", claimsSet->ClaimsArrays[j].ClaimEntries[k].Id);
   for(l = 0; l < claimsSet->ClaimsArrays[j].ClaimEntries[k].Values.ci64.ValueCount; l++)
   {
    switch(claimsSet->ClaimsArrays[j].ClaimEntries[k].Type)
    {
    case 130:
     kprintf(L"    [INT64 ] %ll\n", claimsSet->ClaimsArrays[j].ClaimEntries[k].Values.ci64.Int64Values[l]);
     break;
    case 128:
     kprintf(L"    [UINT64] %ull\n", claimsSet->ClaimsArrays[j].ClaimEntries[k].Values.cui64.Uint64Values[l]);
     break;
    case 129:
     kprintf(L"    [STRING] %s\n", claimsSet->ClaimsArrays[j].ClaimEntries[k].Values.cs.StringValues[l]);
     break;
    case 131:
     kprintf(L"    [BOOL  ] %016llx\n", claimsSet->ClaimsArrays[j].ClaimEntries[k].Values.cb.BooleanValues[l]);
     break;
    default:
     kprintf(L"    [!%hu!]\n", claimsSet->ClaimsArrays[j].ClaimEntries[k].Type);
    }
   }
  }
 }
}

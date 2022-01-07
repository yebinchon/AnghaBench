
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int ulClaimsCount; TYPE_3__* ClaimEntries; int usClaimsSourceType; } ;
struct TYPE_10__ {int ulClaimsArrayCount; TYPE_5__* ClaimsArrays; } ;
struct TYPE_7__ {int ValueCount; void** StringValues; } ;
struct TYPE_8__ {TYPE_1__ cs; } ;
struct TYPE_9__ {TYPE_2__ Values; void* Id; int Type; } ;
typedef int * PWCHAR ;
typedef TYPE_3__* PCLAIM_ENTRY ;
typedef TYPE_4__* PCLAIMS_SET ;
typedef TYPE_5__* PCLAIMS_ARRAY ;
typedef void* LPWSTR ;
typedef int * LPCWCHAR ;
typedef size_t DWORD ;
typedef int CLAIM_ENTRY ;
typedef int CLAIMS_SET ;
typedef int CLAIMS_ARRAY ;


 int CLAIMS_SOURCE_TYPE_AD ;
 int CLAIM_TYPE_STRING ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 void* _wcsdup (int *) ;
 int free (int *) ;
 int * wcstok_s (int *,char*,int **) ;

PCLAIMS_SET kuhl_m_kerberos_claims_createFromString(LPCWCHAR string)
{
 PCLAIMS_SET set = ((void*)0);
 PWCHAR dupClaims, dupSet, dupEnt, nextSetToken, SetToken, nextArrayToken, ArrayToken, nextKeyToken, KeyToken, nextValueToken, ValueToken;
 DWORD curArr, curEnt, curVal;

 if(set = (PCLAIMS_SET) LocalAlloc(LPTR, sizeof(CLAIMS_SET)))
 {
  if(dupClaims = _wcsdup(string))
  {
   for(nextSetToken = ((void*)0), SetToken = wcstok_s(dupClaims, L";", &nextSetToken); SetToken; SetToken = wcstok_s(((void*)0), L";", &nextSetToken))
    set->ulClaimsArrayCount++;
   free(dupClaims);
  }
  if(set->ClaimsArrays = (PCLAIMS_ARRAY) LocalAlloc(LPTR, sizeof(CLAIMS_ARRAY) * set->ulClaimsArrayCount))
  {
   if(dupClaims = _wcsdup(string))
   {
    for(nextSetToken = ((void*)0), curArr = 0, SetToken = wcstok_s(dupClaims, L";", &nextSetToken); SetToken; curArr++, SetToken = wcstok_s(((void*)0), L";", &nextSetToken))
    {
     set->ClaimsArrays[curArr].usClaimsSourceType = CLAIMS_SOURCE_TYPE_AD;
     if(dupSet = _wcsdup(SetToken))
     {
      for(nextArrayToken = ((void*)0), ArrayToken = wcstok_s(dupSet, L",", &nextArrayToken); ArrayToken; ArrayToken = wcstok_s(((void*)0), L",", &nextArrayToken))
       set->ClaimsArrays[curArr].ulClaimsCount++;
      free(dupSet);
     }
     if(set->ClaimsArrays[curArr].ClaimEntries = (PCLAIM_ENTRY) LocalAlloc(LPTR, sizeof(CLAIM_ENTRY) * set->ClaimsArrays[curArr].ulClaimsCount))
     {
      for(nextArrayToken = ((void*)0), curEnt = 0, ArrayToken = wcstok_s(SetToken, L",", &nextArrayToken); ArrayToken; curEnt++, ArrayToken = wcstok_s(((void*)0), L",", &nextArrayToken))
      {
       set->ClaimsArrays[curArr].ClaimEntries[curEnt].Type = CLAIM_TYPE_STRING;
       nextKeyToken = ((void*)0);
       if(KeyToken = wcstok_s(ArrayToken, L"=", &nextKeyToken))
       {
        if(set->ClaimsArrays[curArr].ClaimEntries[curEnt].Id = _wcsdup(KeyToken))
        {
         if(KeyToken = wcstok_s(((void*)0), L"=", &nextKeyToken))
         {
          if(dupEnt = _wcsdup(KeyToken))
          {
           for(nextValueToken = ((void*)0), ValueToken = wcstok_s(dupEnt, L"|", &nextValueToken); ValueToken; ValueToken = wcstok_s(((void*)0), L"|", &nextValueToken))
            set->ClaimsArrays[curArr].ClaimEntries[curEnt].Values.cs.ValueCount++;
           free(dupEnt);
          }
          if(set->ClaimsArrays[curArr].ClaimEntries[curEnt].Values.cs.StringValues = (LPWSTR *) LocalAlloc(LPTR, sizeof(LPWSTR) * set->ClaimsArrays[curArr].ClaimEntries[curEnt].Values.cs.ValueCount))
           for(nextValueToken = ((void*)0), curVal = 0, ValueToken = wcstok_s(KeyToken, L"|", &nextValueToken); ValueToken; curVal++, ValueToken = wcstok_s(((void*)0), L"|", &nextValueToken))
            set->ClaimsArrays[curArr].ClaimEntries[curEnt].Values.cs.StringValues[curVal] = _wcsdup(ValueToken);
         }
        }
       }
      }
     }
    }
    free(dupClaims);
   }
  }
 }
 return set;
}

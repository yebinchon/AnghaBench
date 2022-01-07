
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int valCount; } ;
struct TYPE_5__ {int * pszValue; TYPE_1__ AttrVal; } ;
typedef int PWSTR ;
typedef TYPE_2__* PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE ;
typedef int PCWSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 int RtlCopyMemory (int *,int *,int) ;
 scalar_t__ TRUE ;
 scalar_t__ kull_m_string_copy (int *,int ) ;

BOOL kuhl_m_lsadump_dcshadow_encode_add_value(PCWSTR szValue, PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE pAttribute, BOOL fAddMultipleValues)
{
 DWORD dwNewCb = (fAddMultipleValues ? pAttribute->AttrVal.valCount+1 : 1);
 PWSTR* pszOldValues = pAttribute->pszValue;

 pAttribute->pszValue = (PWSTR *) LocalAlloc(LPTR, sizeof(PWSTR) * (dwNewCb));
 if(pAttribute->pszValue)
 {
  if(kull_m_string_copy(pAttribute->pszValue + dwNewCb-1, szValue))
  {
   if(fAddMultipleValues && pAttribute->AttrVal.valCount)
    RtlCopyMemory(pAttribute->pszValue, pszOldValues, sizeof(PWSTR) * pAttribute->AttrVal.valCount);
   pAttribute->AttrVal.valCount = dwNewCb;
   if(pszOldValues)
    LocalFree(pszOldValues);
   return TRUE;
  }
  else
   LocalFree(pAttribute->pszValue);
 }
 pAttribute->pszValue = pszOldValues;
 return FALSE;
}

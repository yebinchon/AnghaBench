
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PSID ;
typedef int LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int BOOL ;


 int ConvertSidToStringSid (int ,int *) ;
 scalar_t__ ConvertStringSidToSid (int*,int *) ;
 int FALSE ;
 int LocalFree (int ) ;
 int* _wcsdup (scalar_t__) ;
 int free (int*) ;
 int kprintf (char*,int ) ;
 int* wcsrchr (int*,int) ;

BOOL kuhl_m_dpapi_oe_autosid(LPCWSTR filename, LPWSTR * pSid)
{
 BOOL status = FALSE;
 wchar_t *duplicate, *pE;
 PSID tmpSid;
 if(filename && (duplicate = _wcsdup(filename)))
 {
  if(pE = wcsrchr(duplicate, L'\\'))
  {
   *pE = L'\0';
   if(pE = wcsrchr(duplicate, L'\\'))
   {
    if(ConvertStringSidToSid(++pE, &tmpSid))
    {
     if(status = ConvertSidToStringSid(tmpSid, pSid))
     {
      kprintf(L"Auto SID from path seems to be: %s\n", *pSid);
     }
     LocalFree(tmpSid);
    }
   }
  }
  free(duplicate);
 }
 return status;
}

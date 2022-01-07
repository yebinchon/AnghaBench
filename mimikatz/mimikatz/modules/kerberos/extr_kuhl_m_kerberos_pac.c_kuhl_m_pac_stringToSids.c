
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Attributes; int Sid; } ;
typedef int * PWSTR ;
typedef int * PSID ;
typedef TYPE_1__* PKERB_SID_AND_ATTRIBUTES ;
typedef scalar_t__ PCWSTR ;
typedef int KERB_SID_AND_ATTRIBUTES ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ConvertStringSidToSid (int *,int **) ;
 int DEFAULT_GROUP_ATTRIBUTES ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 int * _wcsdup (scalar_t__) ;
 int free (int *) ;
 int * wcstok_s (int *,char*,int **) ;

BOOL kuhl_m_pac_stringToSids(PCWSTR szSids, PKERB_SID_AND_ATTRIBUTES *sids, DWORD *cbSids)
{
 PWSTR dupSids, nextSetToken, SetToken;
 DWORD i;
 PSID tmp = ((void*)0);
 *sids = ((void*)0);
 *cbSids = 0;
 if(szSids)
 {
  if(dupSids = _wcsdup(szSids))
  {
   for(nextSetToken = ((void*)0), SetToken = wcstok_s(dupSids, L",", &nextSetToken); SetToken; SetToken = wcstok_s(((void*)0), L",", &nextSetToken))
   {
    if(ConvertStringSidToSid(SetToken, &tmp))
    {
     (*cbSids)++;
     LocalFree(tmp);
    }
   }
   free(dupSids);
  }
  if(*cbSids && (*sids = (PKERB_SID_AND_ATTRIBUTES) LocalAlloc(LPTR, *cbSids * sizeof(KERB_SID_AND_ATTRIBUTES))))
  {
   if(dupSids = _wcsdup(szSids))
   {
    for(i = 0, nextSetToken = ((void*)0), SetToken = wcstok_s(dupSids, L",", &nextSetToken); (i < *cbSids) && SetToken; SetToken = wcstok_s(((void*)0), L",", &nextSetToken))
     if(ConvertStringSidToSid(SetToken, (PSID *) &(*sids)[i].Sid))
      (*sids)[i++].Attributes = DEFAULT_GROUP_ATTRIBUTES;
    free(dupSids);
   }
  }
 }
 return (*sids && *cbSids);
}

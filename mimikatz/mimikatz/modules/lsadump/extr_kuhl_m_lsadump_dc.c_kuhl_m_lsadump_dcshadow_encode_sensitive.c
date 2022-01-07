
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_18__ {size_t cbAttributes; TYPE_2__* pAttributes; int pSid; } ;
struct TYPE_15__ {TYPE_4__* pAttr; } ;
struct TYPE_16__ {TYPE_5__ AttrBlock; } ;
struct TYPE_17__ {TYPE_6__ Entinf; } ;
struct TYPE_13__ {size_t valCount; size_t pAVal; } ;
struct TYPE_14__ {TYPE_3__ AttrVal; } ;
struct TYPE_12__ {TYPE_1__* pAttribute; } ;
struct TYPE_11__ {int szAttributeName; int fIsSensitive; } ;
typedef TYPE_7__ REPLENTINFLIST ;
typedef int PSecPkgContext_SessionKey ;
typedef int * PSID ;
typedef TYPE_8__* PDCSHADOW_PUSH_REQUEST_OBJECT ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 size_t* GetSidSubAuthority (int *,scalar_t__) ;
 scalar_t__* GetSidSubAuthorityCount (int *) ;
 scalar_t__ _wcsicmp (int ,char*) ;
 int kuhl_m_lsadump_dcshadow_encode_sensitive_value (int,size_t,size_t,int ) ;

void kuhl_m_lsadump_dcshadow_encode_sensitive(REPLENTINFLIST *pReplEnt, PDCSHADOW_PUSH_REQUEST_OBJECT object, PSecPkgContext_SessionKey SessionKey)
{
 DWORD i, j;
 BOOL fSupplRidEncryption = FALSE;
 DWORD dwRid = 0;
 PSID pSid = &(object->pSid);

 for(i = 0; i < object->cbAttributes; i++)
 {
  if(!object->pAttributes[i].pAttribute->fIsSensitive)
   continue;

  fSupplRidEncryption = (_wcsicmp(object->pAttributes[i].pAttribute->szAttributeName, L"unicodePwd")== 0 ||
     _wcsicmp(object->pAttributes[i].pAttribute->szAttributeName, L"dBCSPwd") == 0 ||
     _wcsicmp(object->pAttributes[i].pAttribute->szAttributeName, L"lmPwdHistory") == 0 ||
     _wcsicmp(object->pAttributes[i].pAttribute->szAttributeName, L"ntPwdHistory") == 0);
  if(fSupplRidEncryption)
   dwRid = *GetSidSubAuthority(pSid, (*GetSidSubAuthorityCount(pSid)) - 1);
  for(j = 0; j < pReplEnt->Entinf.AttrBlock.pAttr[i].AttrVal.valCount; j++)
   kuhl_m_lsadump_dcshadow_encode_sensitive_value(fSupplRidEncryption, dwRid, pReplEnt->Entinf.AttrBlock.pAttr[i].AttrVal.pAVal + j, SessionKey);
 }
}

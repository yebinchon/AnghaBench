
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ pVal; } ;
struct TYPE_10__ {size_t attrCount; TYPE_2__* pAttr; } ;
struct TYPE_11__ {TYPE_3__ AttrBlock; } ;
struct TYPE_12__ {TYPE_4__ Entinf; struct TYPE_12__* pNextEntInf; } ;
struct TYPE_8__ {size_t valCount; TYPE_6__* pAVal; } ;
struct TYPE_9__ {scalar_t__ attrTyp; TYPE_1__ AttrVal; } ;
typedef int SCHEMA_PREFIX_TABLE ;
typedef TYPE_5__ REPLENTINFLIST ;
typedef size_t DWORD ;
typedef int BOOL ;
typedef scalar_t__ ATTRTYP ;


 size_t ARRAYSIZE (scalar_t__*) ;
 int FALSE ;
 int PRINT_ERROR (char*,scalar_t__) ;
 int TRUE ;
 int kull_m_rpc_drsr_MakeAttid (int *,scalar_t__,scalar_t__*,int ) ;
 int kull_m_rpc_drsr_ProcessGetNCChangesReply_decrypt (TYPE_6__*,int *) ;
 scalar_t__* kull_m_rpc_drsr_encrypted_oids ;

BOOL kull_m_rpc_drsr_ProcessGetNCChangesReply(SCHEMA_PREFIX_TABLE *prefixTable, REPLENTINFLIST *objects)
{
 ATTRTYP attSensitive[ARRAYSIZE(kull_m_rpc_drsr_encrypted_oids)];
 REPLENTINFLIST * pReplentinflist, *pNextReplentinflist = objects;
 DWORD i, j, k;

 for(i = 0; i < ARRAYSIZE(attSensitive); i++)
 {
  if(!kull_m_rpc_drsr_MakeAttid(prefixTable, kull_m_rpc_drsr_encrypted_oids[i], &attSensitive[i], FALSE))
  {
   PRINT_ERROR(L"Unable to MakeAttid for %S\n", kull_m_rpc_drsr_encrypted_oids[i]);
   return FALSE;
  }
 }

 while(pReplentinflist = pNextReplentinflist)
 {
  pNextReplentinflist = pReplentinflist->pNextEntInf;
  if(pReplentinflist->Entinf.AttrBlock.pAttr)
  {
   for(i = 0; i < pReplentinflist->Entinf.AttrBlock.attrCount; i++)
   {
    for(j = 0; j < ARRAYSIZE(attSensitive); j++)
    {
     if(attSensitive[j] == pReplentinflist->Entinf.AttrBlock.pAttr[i].attrTyp)
     {
      if(pReplentinflist->Entinf.AttrBlock.pAttr[i].AttrVal.pAVal)
       for(k = 0; k < pReplentinflist->Entinf.AttrBlock.pAttr[i].AttrVal.valCount; k++)
        if(pReplentinflist->Entinf.AttrBlock.pAttr[i].AttrVal.pAVal[k].pVal)
         if(!kull_m_rpc_drsr_ProcessGetNCChangesReply_decrypt(&pReplentinflist->Entinf.AttrBlock.pAttr[i].AttrVal.pAVal[k], ((void*)0)))
          return FALSE;
      break;
     }
    }
   }
  }
 }
 return TRUE;
}

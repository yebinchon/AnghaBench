
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int valCount; TYPE_1__* pAVal; } ;
struct TYPE_4__ {int valLen; int * pVal; } ;
typedef int SCHEMA_PREFIX_TABLE ;
typedef int * PVOID ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef TYPE_2__ ATTRVALBLOCK ;
typedef int ATTRBLOCK ;


 TYPE_2__* kull_m_rpc_drsr_findAttr (int *,int *,int ) ;

PVOID kull_m_rpc_drsr_findMonoAttr(SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes, LPCSTR szOid, PVOID data, DWORD *size)
{
 PVOID ptr = ((void*)0);
 ATTRVALBLOCK *valblock;

 if(data)
  *(PVOID *)data = ((void*)0);
 if(size)
  *size = 0;

 if(valblock = kull_m_rpc_drsr_findAttr(prefixTable, attributes, szOid))
 {
  if(valblock->valCount == 1)
  {
   ptr = valblock->pAVal[0].pVal;
   if(data)
    *(PVOID *)data = ptr;
   if(size)
    *size = valblock->pAVal[0].valLen;
  }
 }
 return ptr;
}

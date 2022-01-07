
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ attrTyp; int AttrVal; } ;
struct TYPE_4__ {size_t attrCount; TYPE_2__* pAttr; } ;
typedef int SCHEMA_PREFIX_TABLE ;
typedef int LPCSTR ;
typedef size_t DWORD ;
typedef int ATTRVALBLOCK ;
typedef scalar_t__ ATTRTYP ;
typedef TYPE_1__ ATTRBLOCK ;
typedef TYPE_2__ ATTR ;


 int FALSE ;
 int PRINT_ERROR (char*,int ) ;
 scalar_t__ kull_m_rpc_drsr_MakeAttid (int *,int ,scalar_t__*,int ) ;

ATTRVALBLOCK * kull_m_rpc_drsr_findAttr(SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes, LPCSTR szOid)
{
 ATTRVALBLOCK *ptr = ((void*)0);
 DWORD i;
 ATTR *attribut;
 ATTRTYP type;
 if(kull_m_rpc_drsr_MakeAttid(prefixTable, szOid, &type, FALSE))
 {
  for(i = 0; i < attributes->attrCount; i++)
  {
   attribut = &attributes->pAttr[i];
   if(attribut->attrTyp == type)
   {
    ptr = &attribut->AttrVal;
    break;
   }
  }
 }
 else PRINT_ERROR(L"Unable to get an ATTRTYP for %S\n", szOid);
 return ptr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_11__ {scalar_t__ address; int * member_1; TYPE_2__* member_0; } ;
struct TYPE_10__ {int * address; } ;
struct TYPE_8__ {int * RightChild; int * LeftChild; } ;
struct TYPE_9__ {TYPE_1__ BalancedRoot; int * OrderedPointer; } ;
typedef TYPE_2__ RTL_AVL_TABLE ;
typedef int * PVOID ;
typedef int PLUID ;
typedef TYPE_3__* PKULL_M_MEMORY_ADDRESS ;
typedef scalar_t__ PBYTE ;
typedef int LUID ;
typedef TYPE_4__ KULL_M_MEMORY_ADDRESS ;


 int KULL_M_MEMORY_GLOBAL_OWN_HANDLE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (scalar_t__) ;
 scalar_t__ SecEqualLuid (int ,int ) ;
 scalar_t__ kull_m_memory_copy (TYPE_4__*,TYPE_3__*,int) ;

PVOID kuhl_m_sekurlsa_utils_pFromAVLByLuidRec(PKULL_M_MEMORY_ADDRESS pTable, ULONG LUIDoffset, PLUID luidToFind)
{
 PVOID resultat = ((void*)0);
 RTL_AVL_TABLE maTable;
 KULL_M_MEMORY_ADDRESS data = {&maTable, &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};

 if(kull_m_memory_copy(&data, pTable, sizeof(RTL_AVL_TABLE)))
 {
  if(pTable->address = maTable.OrderedPointer)
  {
   if(data.address = LocalAlloc(LPTR, LUIDoffset + sizeof(LUID)))
   {
    if(kull_m_memory_copy(&data, pTable, LUIDoffset + sizeof(LUID)))
    {
     if(SecEqualLuid(luidToFind, (PLUID) ((PBYTE) (data.address) + LUIDoffset)))
      resultat = maTable.OrderedPointer;
    }
    LocalFree(data.address);
   }
  }
  if(!resultat && (pTable->address = maTable.BalancedRoot.LeftChild))
   resultat = kuhl_m_sekurlsa_utils_pFromAVLByLuidRec(pTable, LUIDoffset, luidToFind);
  if(!resultat && (pTable->address = maTable.BalancedRoot.RightChild))
   resultat = kuhl_m_sekurlsa_utils_pFromAVLByLuidRec(pTable, LUIDoffset, luidToFind);
 }
 return resultat;
}

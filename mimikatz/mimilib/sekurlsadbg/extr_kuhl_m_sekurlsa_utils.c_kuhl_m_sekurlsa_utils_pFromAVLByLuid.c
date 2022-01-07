
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
struct TYPE_4__ {scalar_t__ RightChild; } ;
struct TYPE_5__ {TYPE_1__ BalancedRoot; } ;
typedef TYPE_2__ RTL_AVL_TABLE ;
typedef int PLUID ;


 scalar_t__ ReadMemory (scalar_t__,TYPE_2__*,int,int *) ;
 scalar_t__ kuhl_m_sekurlsa_utils_pFromAVLByLuidRec (scalar_t__,int ,int ) ;

ULONG_PTR kuhl_m_sekurlsa_utils_pFromAVLByLuid(ULONG_PTR pTable, ULONG LUIDoffset, PLUID luidToFind)
{
 ULONG_PTR resultat = 0;
 RTL_AVL_TABLE maTable;
 if(ReadMemory(pTable, &maTable, sizeof(RTL_AVL_TABLE), ((void*)0)))
 {
  pTable = (ULONG_PTR) maTable.BalancedRoot.RightChild;
  resultat = kuhl_m_sekurlsa_utils_pFromAVLByLuidRec(pTable, LUIDoffset, luidToFind);
 }
 return resultat;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_13__ {int PrefixCount; TYPE_3__* pPrefixEntry; } ;
struct TYPE_8__ {int length; scalar_t__ elements; } ;
struct TYPE_12__ {int ndx; TYPE_1__ prefix; } ;
struct TYPE_11__ {size_t PrefixCount; TYPE_5__* pPrefixEntry; } ;
struct TYPE_9__ {int length; int elements; } ;
struct TYPE_10__ {int ndx; TYPE_2__ prefix; } ;
typedef TYPE_4__ SCHEMA_PREFIX_TABLE ;
typedef TYPE_5__ PrefixTableEntry ;
typedef scalar_t__ PBYTE ;
typedef size_t DWORD ;


 scalar_t__ MIDL_user_allocate (int) ;
 int RtlCopyMemory (scalar_t__,int ,int) ;
 TYPE_7__ SCHEMA_DEFAULT_PREFIX_TABLE ;

VOID kuhl_m_lsadump_dcshadow_init_prefixtable(SCHEMA_PREFIX_TABLE* prefixTable)
{
 DWORD i;
 prefixTable->pPrefixEntry = (PrefixTableEntry*) MIDL_user_allocate(sizeof(PrefixTableEntry) * SCHEMA_DEFAULT_PREFIX_TABLE.PrefixCount);
 if (prefixTable->pPrefixEntry)
 {
  for(i = 0; i < SCHEMA_DEFAULT_PREFIX_TABLE.PrefixCount; i++)
  {
   prefixTable->pPrefixEntry[i].prefix.elements = (PBYTE) MIDL_user_allocate(SCHEMA_DEFAULT_PREFIX_TABLE.pPrefixEntry[i].prefix.length);
   if (prefixTable->pPrefixEntry[i].prefix.elements)
   {
    RtlCopyMemory(prefixTable->pPrefixEntry[i].prefix.elements, SCHEMA_DEFAULT_PREFIX_TABLE.pPrefixEntry[i].prefix.elements, SCHEMA_DEFAULT_PREFIX_TABLE.pPrefixEntry[i].prefix.length);
    prefixTable->pPrefixEntry[i].prefix.length = SCHEMA_DEFAULT_PREFIX_TABLE.pPrefixEntry[i].prefix.length;
    prefixTable->pPrefixEntry[i].ndx = SCHEMA_DEFAULT_PREFIX_TABLE.pPrefixEntry[i].ndx;
   }
  }
  prefixTable->PrefixCount = SCHEMA_DEFAULT_PREFIX_TABLE.PrefixCount;
 }
}

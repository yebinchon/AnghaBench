
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SdbStringHashTable {int Size; void* Entries; } ;


 int DEFAULT_TABLE_SIZE ;
 int SHIM_ERR (char*) ;
 void* SdbAlloc (int) ;

__attribute__((used)) static struct SdbStringHashTable* HashCreate(void)
{
    struct SdbStringHashTable* tab = SdbAlloc(sizeof(*tab));
    if (!tab)
    {
        SHIM_ERR("Failed to allocate 8 bytes.\r\n");
        return tab;
    }
    tab->Size = DEFAULT_TABLE_SIZE;
    tab->Entries = SdbAlloc(tab->Size * sizeof(*tab->Entries));
    return tab;
}

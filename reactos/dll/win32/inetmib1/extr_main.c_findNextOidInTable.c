
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GenericTable {int numEntries; int * entries; } ;
typedef int (* oidToKeyFunc ) (int *,void*) ;
typedef scalar_t__ (* compareFunc ) (void*,int *) ;
typedef int UINT ;
typedef int AsnObjectIdentifier ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,void*) ;
 int findValueInTable (void*,struct GenericTable*,size_t,scalar_t__ (*) (void*,int *)) ;

__attribute__((used)) static UINT findNextOidInTable(AsnObjectIdentifier *oid,
    struct GenericTable *table, size_t tableEntrySize, oidToKeyFunc makeKey,
    compareFunc compare)
{
    UINT index = 0;
    void *key = HeapAlloc(GetProcessHeap(), 0, tableEntrySize);

    if (key)
    {
        makeKey(oid, key);
        index = findValueInTable(key, table, tableEntrySize, compare);
        if (index == 0)
        {




            if (compare(key, table->entries) < 0)
                index = 1;
        }
        else
        {





            for (++index; index <= table->numEntries && compare(key,
                &table->entries[tableEntrySize * (index - 1)]) == 0; ++index)
                ;
        }
        HeapFree(GetProcessHeap(), 0, key);
    }
    return index;
}

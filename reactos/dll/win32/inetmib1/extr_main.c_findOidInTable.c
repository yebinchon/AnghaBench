
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GenericTable {int dummy; } ;
typedef int (* oidToKeyFunc ) (int *,void*) ;
typedef int compareFunc ;
typedef int UINT ;
typedef int AsnObjectIdentifier ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,void*) ;
 int findValueInTable (void*,struct GenericTable*,size_t,int ) ;

__attribute__((used)) static UINT findOidInTable(AsnObjectIdentifier *oid,
    struct GenericTable *table, size_t tableEntrySize, oidToKeyFunc makeKey,
    compareFunc compare)
{
    UINT index = 0;
    void *key = HeapAlloc(GetProcessHeap(), 0, tableEntrySize);

    if (key)
    {
        makeKey(oid, key);
        index = findValueInTable(key, table, tableEntrySize, compare);
        HeapFree(GetProcessHeap(), 0, key);
    }
    return index;
}

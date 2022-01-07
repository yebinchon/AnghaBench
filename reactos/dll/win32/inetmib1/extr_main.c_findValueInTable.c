
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GenericTable {scalar_t__ entries; int numEntries; } ;
typedef int compareFunc ;
typedef int UINT ;
typedef int BYTE ;


 void* bsearch (void const*,scalar_t__,int ,size_t,int ) ;

__attribute__((used)) static UINT findValueInTable(const void *key,
    struct GenericTable *table, size_t tableEntrySize, compareFunc compare)
{
    UINT index = 0;
    void *value;

    value = bsearch(key, table->entries, table->numEntries, tableEntrySize,
        compare);
    if (value)
        index = ((BYTE *)value - (BYTE *)table->entries) / tableEntrySize + 1;
    return index;
}

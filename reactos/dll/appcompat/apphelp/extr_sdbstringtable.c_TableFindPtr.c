
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SdbStringHashTable {size_t Size; struct SdbHashEntry** Entries; } ;
struct SdbHashEntry {struct SdbHashEntry* Next; int Name; } ;
typedef int WCHAR ;
typedef size_t DWORD ;


 int Sdbwcscmp (int ,int const*) ;
 size_t StringHash (int const*) ;

__attribute__((used)) static struct SdbHashEntry** TableFindPtr(struct SdbStringHashTable* table, const WCHAR* str)
{
    DWORD hash = StringHash(str);
    struct SdbHashEntry** entry = &table->Entries[hash % table->Size];
    while (*entry)
    {
        if (!Sdbwcscmp((*entry)->Name, str))
            return entry;
        entry = &(*entry)->Next;
    }
    return entry;
}

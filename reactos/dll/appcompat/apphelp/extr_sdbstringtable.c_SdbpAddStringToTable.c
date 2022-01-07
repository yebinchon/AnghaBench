
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SdbStringHashTable {int dummy; } ;
struct SdbHashEntry {int Tagid; } ;
typedef int WCHAR ;
typedef int TAGID ;
typedef int BOOL ;


 int FALSE ;
 int HashAddString (struct SdbStringHashTable*,struct SdbHashEntry**,int const*,int ) ;
 struct SdbStringHashTable* HashCreate () ;
 int SHIM_ERR (char*) ;
 struct SdbHashEntry** TableFindPtr (struct SdbStringHashTable*,int const*) ;

BOOL SdbpAddStringToTable(struct SdbStringHashTable** table, const WCHAR* str, TAGID* tagid)
{
    struct SdbHashEntry** entry;

    if (!*table)
    {
        *table = HashCreate();
        if (!*table)
        {
            SHIM_ERR("Error creating hash table\n");
            return FALSE;
        }
    }

    entry = TableFindPtr(*table, str);
    if (*entry)
    {
        *tagid = (*entry)->Tagid;
        return FALSE;
    }
    return HashAddString(*table, entry, str, *tagid);
}

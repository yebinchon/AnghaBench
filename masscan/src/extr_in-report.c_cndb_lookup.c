
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct CNDB_Entry {unsigned int ip; char const* name; struct CNDB_Entry* next; } ;
struct TYPE_2__ {struct CNDB_Entry** entries; } ;


 TYPE_1__* db ;

__attribute__((used)) static const char *
cndb_lookup(unsigned ip)
{
    const struct CNDB_Entry *entry;

    if (db == ((void*)0))
        return 0;

    entry = db->entries[ip&0xFFFF];
    while (entry && entry->ip != ip)
        entry = entry->next;
    if (entry)
        return entry->name;
    else {
        return 0;
    }
}

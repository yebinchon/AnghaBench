
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct CNDB_Entry {unsigned int ip; char* name; struct CNDB_Entry* next; } ;
struct TYPE_3__ {struct CNDB_Entry** entries; } ;


 TYPE_1__* CALLOC (int,int) ;
 void* MALLOC (size_t) ;
 TYPE_1__* db ;
 int memcpy (char*,unsigned char const*,size_t) ;

__attribute__((used)) static void
cndb_add(unsigned ip, const unsigned char *name, size_t name_length)
{
    struct CNDB_Entry *entry;

    if (name_length == 0)
        return;

    if (db == ((void*)0)) {
        db = CALLOC(1, sizeof(*db));
    }

    entry = MALLOC(sizeof(*entry));
    entry->ip =ip;
    entry->name = MALLOC(name_length+1);
    memcpy(entry->name, name, name_length+1);
    entry->name[name_length] = '\0';
    entry->next = db->entries[ip&0xFFFF];
    db->entries[ip&0xFFFF] = entry;

}

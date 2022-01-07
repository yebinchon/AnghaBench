
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int avl ;
struct TYPE_9__ {int flags; int values_index; } ;
struct TYPE_8__ {char* name; void* value; scalar_t__ hash; } ;
typedef TYPE_1__ NAME_VALUE ;
typedef TYPE_2__ DICTIONARY ;


 int DICTIONARY_FLAG_NAME_LINK_DONT_CLONE ;
 int DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE ;
 int D_DICTIONARY ;
 int NETDATA_DICTIONARY_STATS_ENTRIES_PLUS1 (TYPE_2__*) ;
 int NETDATA_DICTIONARY_STATS_INSERTS_PLUS1 (TYPE_2__*) ;
 int * avl_insert (int *,int *) ;
 TYPE_1__* callocz (int,int) ;
 int debug (int ,char*,char const*) ;
 int error (char*) ;
 void* mallocz (size_t) ;
 int memcpy (void*,void*,size_t) ;
 scalar_t__ simple_hash (char*) ;
 char* strdupz (char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static NAME_VALUE *dictionary_name_value_create_nolock(DICTIONARY *dict, const char *name, void *value, size_t value_len, uint32_t hash) {
    debug(D_DICTIONARY, "Creating name value entry for name '%s'.", name);

    NAME_VALUE *nv = callocz(1, sizeof(NAME_VALUE));

    if(dict->flags & DICTIONARY_FLAG_NAME_LINK_DONT_CLONE)
        nv->name = (char *)name;
    else {
        nv->name = strdupz(name);
    }

    nv->hash = (hash)?hash:simple_hash(nv->name);

    if(dict->flags & DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE)
        nv->value = value;
    else {
        nv->value = mallocz(value_len);
        memcpy(nv->value, value, value_len);
    }


    NETDATA_DICTIONARY_STATS_INSERTS_PLUS1(dict);
    if(unlikely(avl_insert(&((dict)->values_index), (avl *)(nv)) != (avl *)nv))
        error("dictionary: INTERNAL ERROR: duplicate insertion to dictionary.");

    NETDATA_DICTIONARY_STATS_ENTRIES_PLUS1(dict);

    return nv;
}

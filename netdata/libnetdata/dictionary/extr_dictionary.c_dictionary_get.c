
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* value; } ;
typedef TYPE_1__ NAME_VALUE ;
typedef int DICTIONARY ;


 int D_DICTIONARY ;
 int debug (int ,char*,char const*) ;
 TYPE_1__* dictionary_name_value_index_find_nolock (int *,char const*,int ) ;
 int dictionary_read_lock (int *) ;
 int dictionary_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void *dictionary_get(DICTIONARY *dict, const char *name) {
    debug(D_DICTIONARY, "GET dictionary entry with name '%s'.", name);

    dictionary_read_lock(dict);
    NAME_VALUE *nv = dictionary_name_value_index_find_nolock(dict, name, 0);
    dictionary_unlock(dict);

    if(unlikely(!nv)) {
        debug(D_DICTIONARY, "Not found dictionary entry with name '%s'.", name);
        return ((void*)0);
    }

    debug(D_DICTIONARY, "Found dictionary entry with name '%s'.", name);
    return nv->value;
}

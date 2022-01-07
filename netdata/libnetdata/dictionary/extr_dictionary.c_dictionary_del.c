
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NAME_VALUE ;
typedef int DICTIONARY ;


 int D_DICTIONARY ;
 int debug (int ,char*,char const*) ;
 int dictionary_name_value_destroy_nolock (int *,int *) ;
 int * dictionary_name_value_index_find_nolock (int *,char const*,int ) ;
 int dictionary_unlock (int *) ;
 int dictionary_write_lock (int *) ;
 scalar_t__ unlikely (int) ;

int dictionary_del(DICTIONARY *dict, const char *name) {
    int ret;

    debug(D_DICTIONARY, "DEL dictionary entry with name '%s'.", name);

    dictionary_write_lock(dict);

    NAME_VALUE *nv = dictionary_name_value_index_find_nolock(dict, name, 0);
    if(unlikely(!nv)) {
        debug(D_DICTIONARY, "Not found dictionary entry with name '%s'.", name);
        ret = -1;
    }
    else {
        debug(D_DICTIONARY, "Found dictionary entry with name '%s'.", name);
        dictionary_name_value_destroy_nolock(dict, nv);
        ret = 0;
    }

    dictionary_unlock(dict);

    return ret;
}

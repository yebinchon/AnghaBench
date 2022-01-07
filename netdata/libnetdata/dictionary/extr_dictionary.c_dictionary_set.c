
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {void* value; } ;
typedef TYPE_1__ NAME_VALUE ;
typedef TYPE_2__ DICTIONARY ;


 int DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE ;
 int D_DICTIONARY ;
 int D_REGISTRY ;
 int debug (int ,char*,char const*) ;
 TYPE_1__* dictionary_name_value_create_nolock (TYPE_2__*,char const*,void*,size_t,int ) ;
 TYPE_1__* dictionary_name_value_index_find_nolock (TYPE_2__*,char const*,int ) ;
 int dictionary_unlock (TYPE_2__*) ;
 int dictionary_write_lock (TYPE_2__*) ;
 int fatal (char*) ;
 int freez (void*) ;
 void* mallocz (size_t) ;
 int memcpy (void*,void*,size_t) ;
 int simple_hash (char const*) ;
 scalar_t__ unlikely (int) ;

void *dictionary_set(DICTIONARY *dict, const char *name, void *value, size_t value_len) {
    debug(D_DICTIONARY, "SET dictionary entry with name '%s'.", name);

    uint32_t hash = simple_hash(name);

    dictionary_write_lock(dict);

    NAME_VALUE *nv = dictionary_name_value_index_find_nolock(dict, name, hash);
    if(unlikely(!nv)) {
        debug(D_DICTIONARY, "Dictionary entry with name '%s' not found. Creating a new one.", name);

        nv = dictionary_name_value_create_nolock(dict, name, value, value_len, hash);
        if(unlikely(!nv))
            fatal("Cannot create name_value.");
    }
    else {
        debug(D_DICTIONARY, "Dictionary entry with name '%s' found. Changing its value.", name);

        if(dict->flags & DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE) {
            debug(D_REGISTRY, "Dictionary: linking value to '%s'", name);
            nv->value = value;
        }
        else {
            debug(D_REGISTRY, "Dictionary: cloning value to '%s'", name);



            void *new = mallocz(value_len),
                    *old = nv->value;

            memcpy(new, value, value_len);
            nv->value = new;

            debug(D_REGISTRY, "Dictionary: freeing old value of '%s'", name);
            freez(old);
        }
    }

    dictionary_unlock(dict);

    return nv->value;
}

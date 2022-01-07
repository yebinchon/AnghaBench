
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int root; } ;
struct TYPE_7__ {TYPE_1__ values_index; } ;
typedef TYPE_2__ DICTIONARY ;


 int dictionary_read_lock (TYPE_2__*) ;
 int dictionary_unlock (TYPE_2__*) ;
 int dictionary_walker_name_value (int ,int (*) (char*,void*,void*),void*) ;
 scalar_t__ likely (int ) ;

int dictionary_get_all_name_value(DICTIONARY *dict, int (*callback)(char *name, void *entry, void *data), void *data) {
    int ret = 0;

    dictionary_read_lock(dict);

    if(likely(dict->values_index.root))
        ret = dictionary_walker_name_value(dict->values_index.root, callback, data);

    dictionary_unlock(dict);

    return ret;
}

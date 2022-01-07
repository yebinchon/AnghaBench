
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int avl ;
struct TYPE_7__ {int values_index; } ;
struct TYPE_6__ {char* name; scalar_t__ hash; } ;
typedef TYPE_1__ NAME_VALUE ;
typedef TYPE_2__ DICTIONARY ;


 int NETDATA_DICTIONARY_STATS_SEARCHES_PLUS1 (TYPE_2__*) ;
 scalar_t__ avl_search (int *,int *) ;
 scalar_t__ simple_hash (char const*) ;

__attribute__((used)) static inline NAME_VALUE *dictionary_name_value_index_find_nolock(DICTIONARY *dict, const char *name, uint32_t hash) {
    NAME_VALUE tmp;
    tmp.hash = (hash)?hash:simple_hash(name);
    tmp.name = (char *)name;

    NETDATA_DICTIONARY_STATS_SEARCHES_PLUS1(dict);
    return (NAME_VALUE *)avl_search(&(dict->values_index), (avl *) &tmp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct dictionary_stats {int dummy; } ;
typedef int netdata_rwlock_t ;
struct TYPE_3__ {int flags; int values_index; void* rwlock; void* stats; } ;
typedef TYPE_1__ DICTIONARY ;


 int DICTIONARY_FLAG_SINGLE_THREADED ;
 int DICTIONARY_FLAG_WITH_STATISTICS ;
 int D_DICTIONARY ;
 int avl_init (int *,int ) ;
 void* callocz (int,int) ;
 int debug (int ,char*) ;
 int name_value_compare ;
 int netdata_rwlock_init (void*) ;

DICTIONARY *dictionary_create(uint8_t flags) {
    debug(D_DICTIONARY, "Creating dictionary.");

    DICTIONARY *dict = callocz(1, sizeof(DICTIONARY));

    if(flags & DICTIONARY_FLAG_WITH_STATISTICS)
        dict->stats = callocz(1, sizeof(struct dictionary_stats));

    if(!(flags & DICTIONARY_FLAG_SINGLE_THREADED)) {
        dict->rwlock = callocz(1, sizeof(netdata_rwlock_t));
        netdata_rwlock_init(dict->rwlock);
    }

    avl_init(&dict->values_index, name_value_compare);
    dict->flags = flags;

    return dict;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rwlock; } ;
typedef TYPE_1__ DICTIONARY ;


 scalar_t__ likely (int ) ;
 int netdata_rwlock_rdlock (int ) ;

__attribute__((used)) static inline void dictionary_read_lock(DICTIONARY *dict) {
    if(likely(dict->rwlock)) {

        netdata_rwlock_rdlock(dict->rwlock);
    }
}

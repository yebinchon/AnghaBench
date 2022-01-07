
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int deletes; } ;
struct TYPE_4__ {TYPE_2__* stats; } ;
typedef TYPE_1__ DICTIONARY ;


 scalar_t__ likely (TYPE_2__*) ;

__attribute__((used)) static inline void NETDATA_DICTIONARY_STATS_DELETES_PLUS1(DICTIONARY *dict) {
    if(likely(dict->stats))
        dict->stats->deletes++;
}

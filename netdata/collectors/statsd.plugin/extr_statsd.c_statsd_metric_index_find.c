
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int avl ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {char const* name; scalar_t__ hash; } ;
typedef TYPE_1__ STATSD_METRIC ;
typedef TYPE_2__ STATSD_INDEX ;


 scalar_t__ STATSD_AVL_SEARCH (int *,int *) ;
 scalar_t__ simple_hash (char const*) ;

__attribute__((used)) static inline STATSD_METRIC *statsd_metric_index_find(STATSD_INDEX *index, const char *name, uint32_t hash) {
    STATSD_METRIC tmp;
    tmp.name = name;
    tmp.hash = (hash)?hash:simple_hash(tmp.name);

    return (STATSD_METRIC *)STATSD_AVL_SEARCH(&index->index, (avl *)&tmp);
}

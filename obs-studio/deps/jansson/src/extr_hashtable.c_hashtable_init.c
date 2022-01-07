
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int list; TYPE_2__* buckets; int order; int ordered_list; scalar_t__ size; } ;
typedef TYPE_1__ hashtable_t ;
typedef int bucket_t ;
struct TYPE_5__ {int * last; int * first; } ;


 int INITIAL_HASHTABLE_ORDER ;
 size_t hashsize (int ) ;
 TYPE_2__* jsonp_malloc (int) ;
 int list_init (int *) ;

int hashtable_init(hashtable_t *hashtable)
{
    size_t i;

    hashtable->size = 0;
    hashtable->order = INITIAL_HASHTABLE_ORDER;
    hashtable->buckets = jsonp_malloc(hashsize(hashtable->order) * sizeof(bucket_t));
    if(!hashtable->buckets)
        return -1;

    list_init(&hashtable->list);
    list_init(&hashtable->ordered_list);

    for(i = 0; i < hashsize(hashtable->order); i++)
    {
        hashtable->buckets[i].first = hashtable->buckets[i].last =
            &hashtable->list;
    }

    return 0;
}

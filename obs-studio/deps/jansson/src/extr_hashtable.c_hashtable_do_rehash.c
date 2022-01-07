
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct hashtable_bucket {TYPE_2__* last; TYPE_2__* first; } ;
struct TYPE_9__ {size_t hash; int list; } ;
typedef TYPE_1__ pair_t ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_2__ list_t ;
struct TYPE_11__ {int order; struct hashtable_bucket* buckets; TYPE_2__ list; } ;
typedef TYPE_3__ hashtable_t ;
typedef int bucket_t ;


 size_t hashsize (size_t) ;
 int insert_to_bucket (TYPE_3__*,struct hashtable_bucket*,int *) ;
 int jsonp_free (struct hashtable_bucket*) ;
 struct hashtable_bucket* jsonp_malloc (size_t) ;
 int list_init (TYPE_2__*) ;
 TYPE_1__* list_to_pair (TYPE_2__*) ;

__attribute__((used)) static int hashtable_do_rehash(hashtable_t *hashtable)
{
    list_t *list, *next;
    pair_t *pair;
    size_t i, index, new_size, new_order;
    struct hashtable_bucket *new_buckets;

    new_order = hashtable->order + 1;
    new_size = hashsize(new_order);

    new_buckets = jsonp_malloc(new_size * sizeof(bucket_t));
    if(!new_buckets)
        return -1;

    jsonp_free(hashtable->buckets);
    hashtable->buckets = new_buckets;
    hashtable->order = new_order;

    for(i = 0; i < hashsize(hashtable->order); i++)
    {
        hashtable->buckets[i].first = hashtable->buckets[i].last =
            &hashtable->list;
    }

    list = hashtable->list.next;
    list_init(&hashtable->list);

    for(; list != &hashtable->list; list = next) {
        next = list->next;
        pair = list_to_pair(list);
        index = pair->hash % new_size;
        insert_to_bucket(hashtable, &hashtable->buckets[index], &pair->list);
    }

    return 0;
}

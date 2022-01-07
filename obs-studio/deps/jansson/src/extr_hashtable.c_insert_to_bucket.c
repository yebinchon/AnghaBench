
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int list_t ;
struct TYPE_7__ {int list; } ;
typedef TYPE_1__ hashtable_t ;
struct TYPE_8__ {int * first; int * last; } ;
typedef TYPE_2__ bucket_t ;


 scalar_t__ bucket_is_empty (TYPE_1__*,TYPE_2__*) ;
 int list_insert (int *,int *) ;

__attribute__((used)) static void insert_to_bucket(hashtable_t *hashtable, bucket_t *bucket,
                             list_t *list)
{
    if(bucket_is_empty(hashtable, bucket))
    {
        list_insert(&hashtable->list, list);
        bucket->first = bucket->last = list;
    }
    else
    {
        list_insert(bucket->first, list);
        bucket->first = list;
    }
}

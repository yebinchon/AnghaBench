
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int value; } ;
typedef TYPE_1__ pair_t ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_2__ list_t ;
struct TYPE_10__ {TYPE_2__ list; } ;
typedef TYPE_3__ hashtable_t ;


 int json_decref (int ) ;
 int jsonp_free (TYPE_1__*) ;
 TYPE_1__* list_to_pair (TYPE_2__*) ;

__attribute__((used)) static void hashtable_do_clear(hashtable_t *hashtable)
{
    list_t *list, *next;
    pair_t *pair;

    for(list = hashtable->list.next; list != &hashtable->list; list = next)
    {
        next = list->next;
        pair = list_to_pair(list);
        json_decref(pair->value);
        jsonp_free(pair);
    }
}

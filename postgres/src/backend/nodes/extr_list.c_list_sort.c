
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* qsort_comparator ) (void const*,void const*) ;
typedef scalar_t__ list_sort_comparator ;
struct TYPE_5__ {int elements; } ;
typedef int ListCell ;
typedef TYPE_1__ List ;


 int check_list_invariants (TYPE_1__*) ;
 int list_length (TYPE_1__*) ;
 int qsort (int ,int,int,int (*) (void const*,void const*)) ;

void
list_sort(List *list, list_sort_comparator cmp)
{
 typedef int (*qsort_comparator) (const void *a, const void *b);
 int len;

 check_list_invariants(list);


 len = list_length(list);
 if (len > 1)
  qsort(list->elements, len, sizeof(ListCell), (qsort_comparator) cmp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int collator_sort_key_index_t ;



__attribute__((used)) static void collator_sortkey_swap(collator_sort_key_index_t *p, collator_sort_key_index_t *q)
{
 collator_sort_key_index_t t;
 t = *p;
 *p = *q;
 *q = t;
}

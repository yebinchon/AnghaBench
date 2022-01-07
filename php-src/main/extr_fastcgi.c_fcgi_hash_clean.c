
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; int pos; struct TYPE_6__* next; scalar_t__ idx; } ;
typedef TYPE_1__ fcgi_hash_buckets ;
struct TYPE_7__ {TYPE_1__* data; TYPE_1__* buckets; int * list; int hash_table; } ;
typedef TYPE_2__ fcgi_hash ;
typedef TYPE_1__ fcgi_data_seg ;


 int free (TYPE_1__*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void fcgi_hash_clean(fcgi_hash *h)
{
 memset(h->hash_table, 0, sizeof(h->hash_table));
 h->list = ((void*)0);

 while (h->buckets->next) {
  fcgi_hash_buckets *q = h->buckets;

  h->buckets = h->buckets->next;
  free(q);
 }
 h->buckets->idx = 0;

 while (h->data->next) {
  fcgi_data_seg *q = h->data;

  h->data = h->data->next;
  free(q);
 }
 h->data->pos = h->data->data;
}

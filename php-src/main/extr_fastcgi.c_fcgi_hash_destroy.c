
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ fcgi_hash_buckets ;
struct TYPE_7__ {TYPE_1__* data; TYPE_1__* buckets; } ;
typedef TYPE_2__ fcgi_hash ;
typedef TYPE_1__ fcgi_data_seg ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void fcgi_hash_destroy(fcgi_hash *h)
{
 fcgi_hash_buckets *b;
 fcgi_data_seg *p;

 b = h->buckets;
 while (b) {
  fcgi_hash_buckets *q = b;
  b = b->next;
  free(q);
 }
 p = h->data;
 while (p) {
  fcgi_data_seg *q = p;
  p = p->next;
  free(q);
 }
}

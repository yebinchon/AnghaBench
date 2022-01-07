
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * next; scalar_t__ idx; } ;
typedef TYPE_1__ fcgi_hash_buckets ;
struct TYPE_6__ {TYPE_3__* data; TYPE_1__* buckets; int * list; int hash_table; } ;
typedef TYPE_2__ fcgi_hash ;
struct TYPE_7__ {int * next; scalar_t__ pos; scalar_t__ end; scalar_t__ data; } ;
typedef TYPE_3__ fcgi_data_seg ;


 int FCGI_HASH_SEG_SIZE ;
 scalar_t__ malloc (int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void fcgi_hash_init(fcgi_hash *h)
{
 memset(h->hash_table, 0, sizeof(h->hash_table));
 h->list = ((void*)0);
 h->buckets = (fcgi_hash_buckets*)malloc(sizeof(fcgi_hash_buckets));
 h->buckets->idx = 0;
 h->buckets->next = ((void*)0);
 h->data = (fcgi_data_seg*)malloc(sizeof(fcgi_data_seg) - 1 + FCGI_HASH_SEG_SIZE);
 h->data->pos = h->data->data;
 h->data->end = h->data->pos + FCGI_HASH_SEG_SIZE;
 h->data->next = ((void*)0);
}

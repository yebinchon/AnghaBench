
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table_elt {int name; struct hash_table_elt* next; } ;
struct hash_table {int num_buckets; struct hash_table_elt** buckets; scalar_t__ num_elts; } ;


 int FIXME (char*,...) ;

void hash_table_destroy(struct hash_table* ht)
{
}

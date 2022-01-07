
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int hash_value; unsigned int var_len; unsigned int val_len; char* val; struct TYPE_4__* next; int var; } ;
typedef TYPE_1__ fcgi_hash_bucket ;
struct TYPE_5__ {TYPE_1__** hash_table; } ;
typedef TYPE_2__ fcgi_hash ;


 unsigned int FCGI_HASH_TABLE_MASK ;
 scalar_t__ memcmp (int ,char*,unsigned int) ;

__attribute__((used)) static char *fcgi_hash_get(fcgi_hash *h, unsigned int hash_value, char *var, unsigned int var_len, unsigned int *val_len)
{
 unsigned int idx = hash_value & FCGI_HASH_TABLE_MASK;
 fcgi_hash_bucket *p = h->hash_table[idx];

 while (p != ((void*)0)) {
  if (p->hash_value == hash_value &&
      p->var_len == var_len &&
      memcmp(p->var, var, var_len) == 0) {
      *val_len = p->val_len;
      return p->val;
  }
  p = p->next;
 }
 return ((void*)0);
}

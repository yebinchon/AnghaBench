
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* list_next; int val_len; int * val; int var_len; int var; } ;
typedef TYPE_1__ fcgi_hash_bucket ;
struct TYPE_5__ {TYPE_1__* list; } ;
typedef TYPE_2__ fcgi_hash ;
typedef int (* fcgi_apply_func ) (int ,int ,int *,int ,void*) ;


 scalar_t__ EXPECTED (int ) ;

__attribute__((used)) static void fcgi_hash_apply(fcgi_hash *h, fcgi_apply_func func, void *arg)
{
 fcgi_hash_bucket *p = h->list;

 while (p) {
  if (EXPECTED(p->val != ((void*)0))) {
   func(p->var, p->var_len, p->val, p->val_len, arg);
  }
  p = p->list_next;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RHash {int ht; } ;
typedef int mrb_state ;


 int ht_free (int *,int ) ;

void
mrb_gc_free_hash(mrb_state *mrb, struct RHash *hash)
{
  ht_free(mrb, hash->ht);
}

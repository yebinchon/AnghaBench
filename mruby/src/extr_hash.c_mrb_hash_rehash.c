
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int RHASH_TBL (int ) ;
 int ht_compact (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_hash_rehash(mrb_state *mrb, mrb_value self)
{
  ht_compact(mrb, RHASH_TBL(self));
  return self;
}

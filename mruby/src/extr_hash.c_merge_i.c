
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int htable ;


 int ht_put (int *,int *,int ,int ) ;

__attribute__((used)) static int
merge_i(mrb_state *mrb, mrb_value key, mrb_value val, void *data)
{
  htable *h1 = (htable*)data;

  ht_put(mrb, h1, key, val);
  return 0;
}

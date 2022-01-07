
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t capa; } ;
typedef TYPE_1__ segindex ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_5__ {TYPE_1__* index; } ;
typedef TYPE_2__ htable ;
typedef enum mrb_vtype { ____Placeholder_mrb_vtype } mrb_vtype ;


 int E_RUNTIME_ERROR ;






 int mrb_fixnum (int ) ;
 int mrb_funcall (int *,int ,char*,int ) ;
 int mrb_obj_id (int ) ;
 int mrb_raise (int *,int ,char*) ;
 size_t mrb_str_hash (int *,int ) ;
 int mrb_type (int ) ;

__attribute__((used)) static size_t
ht_hash_func(mrb_state *mrb, htable *t, mrb_value key)
{
  enum mrb_vtype tt = mrb_type(key);
  mrb_value hv;
  size_t h;
  segindex *index = t->index;
  size_t capa = index ? index->capa : 0;

  switch (tt) {
  case 130:
    h = mrb_str_hash(mrb, key);
    break;

  case 128:
  case 133:
  case 129:
  case 132:

  case 131:

    h = (size_t)mrb_obj_id(key);
    break;

  default:
    hv = mrb_funcall(mrb, key, "hash", 0);
    h = (size_t)t ^ (size_t)mrb_fixnum(hv);
    break;
  }
  if (index && (index != t->index || capa != index->capa)) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "hash modified");
  }
  return ((h)^((h)<<2)^((h)>>2));
}

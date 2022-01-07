
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RObject {scalar_t__ iv; } ;
typedef int mrb_state ;


 int iv_free (int *,scalar_t__) ;

void
mrb_gc_free_iv(mrb_state *mrb, struct RObject *obj)
{
  if (obj->iv) {
    iv_free(mrb, obj->iv);
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_3__ {scalar_t__ type; struct TYPE_3__* s; } ;
typedef TYPE_1__ VFNative ;


 scalar_t__ ARG_s ;
 int mrb_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
native_free(mrb_state *mrb, void *data)
{
  VFNative *native = (VFNative*)data;
  if (native->type == ARG_s) mrb_free(mrb, native->s);
  mrb_free(mrb, native);
}

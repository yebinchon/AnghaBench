
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int VFNative ;
struct TYPE_4__ {int type; int v; } ;
typedef TYPE_1__ VFArgument ;


 int ARG_v ;
 scalar_t__ DATA_PTR (int ) ;
 scalar_t__ mrb_obj_is_instance_of (int *,int ,struct RClass*) ;

__attribute__((used)) static VFArgument*
arg_from_obj(mrb_state *mrb, mrb_value obj, struct RClass *native_class,
             VFArgument *vf_arg)
{
  if (mrb_obj_is_instance_of(mrb, obj, native_class)) {
    const VFNative *native = (VFNative*)DATA_PTR(obj);
    *(VFNative*)vf_arg = *native;
  }
  else {
    vf_arg->v = obj;
    vf_arg->type = ARG_v;
  }
  return vf_arg;
}

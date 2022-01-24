#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  VFNative ;
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/  v; } ;
typedef  TYPE_1__ VFArgument ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_v ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct RClass*) ; 

__attribute__((used)) static VFArgument*
FUNC2(mrb_state *mrb, mrb_value obj, struct RClass *native_class,
             VFArgument *vf_arg)
{
  if (FUNC1(mrb, obj, native_class)) {
    const VFNative *native = (VFNative*)FUNC0(obj);
    *(VFNative*)vf_arg = *native;
  }
  else {
    vf_arg->v = obj;
    vf_arg->type = ARG_v;
  }
  return vf_arg;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_7__ {scalar_t__ generational; } ;
struct TYPE_6__ {TYPE_5__ gc; } ;
typedef  TYPE_1__ mrb_state ;
typedef  scalar_t__ mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,scalar_t__*) ; 

__attribute__((used)) static mrb_value
FUNC3(mrb_state *mrb, mrb_value self)
{
  mrb_bool enable;

  FUNC2(mrb, "b", &enable);
  if (mrb->gc.generational != enable)
    FUNC0(mrb, &mrb->gc, enable);

  return FUNC1(enable);
}
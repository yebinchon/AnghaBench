#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_9__ {TYPE_2__* c; } ;
typedef  TYPE_3__ mrb_state ;
typedef  int /*<<< orphan*/  mrb_int ;
struct TYPE_8__ {TYPE_1__* ci; } ;
struct TYPE_7__ {int /*<<< orphan*/  target_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static mrb_value
FUNC3(mrb_state *mrb, mrb_value self)
{
  const mrb_value *argv;
  mrb_int argc;
  mrb_value blk;

  FUNC1(mrb, "*&!", &argv, &argc, &blk);

  mrb->c->ci->target_class = FUNC0(self);
  return FUNC2(mrb, blk, self, argc, argv);
}
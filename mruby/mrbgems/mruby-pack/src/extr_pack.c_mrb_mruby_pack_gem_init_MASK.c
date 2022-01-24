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
struct TYPE_4__ {int /*<<< orphan*/  string_class; int /*<<< orphan*/  array_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_pack_pack ; 
 int /*<<< orphan*/  mrb_pack_unpack ; 
 int /*<<< orphan*/  mrb_pack_unpack1 ; 

void
FUNC4(mrb_state *mrb)
{
  FUNC1();
  FUNC2();

  FUNC3(mrb, mrb->array_class, "pack", mrb_pack_pack, FUNC0(1));
  FUNC3(mrb, mrb->string_class, "unpack", mrb_pack_unpack, FUNC0(1));
  FUNC3(mrb, mrb->string_class, "unpack1", mrb_pack_unpack1, FUNC0(1));
}
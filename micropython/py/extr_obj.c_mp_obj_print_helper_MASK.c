#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_print_t ;
typedef  int /*<<< orphan*/  mp_print_kind_t ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  (* print ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mp_obj_type_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_OBJ_NULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(const mp_print_t *print, mp_obj_t o_in, mp_print_kind_t kind) {
    // There can be data structures nested too deep, or just recursive
    FUNC0();
#ifndef NDEBUG
    if (o_in == MP_OBJ_NULL) {
        FUNC2(print, "(nil)");
        return;
    }
#endif
    mp_obj_type_t *type = FUNC1(o_in);
    if (type->print != NULL) {
        type->print((mp_print_t*)print, o_in, kind);
    } else {
        FUNC3(print, "<%q>", type->name);
    }
}
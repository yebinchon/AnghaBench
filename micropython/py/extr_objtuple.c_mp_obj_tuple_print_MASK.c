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
typedef  scalar_t__ mp_print_kind_t ;
struct TYPE_3__ {size_t len; int /*<<< orphan*/ * items; } ;
typedef  TYPE_1__ mp_obj_tuple_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 scalar_t__ MICROPY_PY_UJSON ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PRINT_JSON ; 
 scalar_t__ PRINT_REPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*) ; 

void FUNC3(const mp_print_t *print, mp_obj_t o_in, mp_print_kind_t kind) {
    mp_obj_tuple_t *o = FUNC0(o_in);
    if (MICROPY_PY_UJSON && kind == PRINT_JSON) {
        FUNC2(print, "[");
    } else {
        FUNC2(print, "(");
        kind = PRINT_REPR;
    }
    for (size_t i = 0; i < o->len; i++) {
        if (i > 0) {
            FUNC2(print, ", ");
        }
        FUNC1(print, o->items[i], kind);
    }
    if (MICROPY_PY_UJSON && kind == PRINT_JSON) {
        FUNC2(print, "]");
    } else {
        if (o->len == 1) {
            FUNC2(print, ",");
        }
        FUNC2(print, ")");
    }
}
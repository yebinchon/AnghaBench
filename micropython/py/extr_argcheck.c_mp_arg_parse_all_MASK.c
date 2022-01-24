#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_10__ {size_t used; } ;
typedef  TYPE_1__ mp_map_t ;
struct TYPE_11__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_2__ mp_map_elem_t ;
struct TYPE_12__ {int /*<<< orphan*/  u_obj; int /*<<< orphan*/  u_int; int /*<<< orphan*/  u_bool; } ;
typedef  TYPE_3__ mp_arg_val_t ;
struct TYPE_13__ {int flags; TYPE_3__ defval; int /*<<< orphan*/  qst; } ;
typedef  TYPE_4__ mp_arg_t ;

/* Variables and functions */
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 int MP_ARG_BOOL ; 
 int MP_ARG_INT ; 
 int MP_ARG_KIND_MASK ; 
 int MP_ARG_KW_ONLY ; 
 int MP_ARG_OBJ ; 
 int MP_ARG_REQUIRED ; 
 int /*<<< orphan*/  MP_MAP_LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  mp_type_TypeError ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(size_t n_pos, const mp_obj_t *pos, mp_map_t *kws, size_t n_allowed, const mp_arg_t *allowed, mp_arg_val_t *out_vals) {
    size_t pos_found = 0, kws_found = 0;
    for (size_t i = 0; i < n_allowed; i++) {
        mp_obj_t given_arg;
        if (i < n_pos) {
            if (allowed[i].flags & MP_ARG_KW_ONLY) {
                goto extra_positional;
            }
            pos_found++;
            given_arg = pos[i];
        } else {
            mp_map_elem_t *kw = FUNC3(kws, FUNC0(allowed[i].qst), MP_MAP_LOOKUP);
            if (kw == NULL) {
                if (allowed[i].flags & MP_ARG_REQUIRED) {
                    if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                        FUNC2();
                    } else {
                        FUNC8(FUNC6(&mp_type_TypeError,
                            "'%q' argument required", allowed[i].qst));
                    }
                }
                out_vals[i] = allowed[i].defval;
                continue;
            } else {
                kws_found++;
                given_arg = kw->value;
            }
        }
        if ((allowed[i].flags & MP_ARG_KIND_MASK) == MP_ARG_BOOL) {
            out_vals[i].u_bool = FUNC5(given_arg);
        } else if ((allowed[i].flags & MP_ARG_KIND_MASK) == MP_ARG_INT) {
            out_vals[i].u_int = FUNC4(given_arg);
        } else {
            FUNC1((allowed[i].flags & MP_ARG_KIND_MASK) == MP_ARG_OBJ);
            out_vals[i].u_obj = given_arg;
        }
    }
    if (pos_found < n_pos) {
        extra_positional:
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            FUNC2();
        } else {
            // TODO better error message
            FUNC7("extra positional arguments given");
        }
    }
    if (kws_found < kws->used) {
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            FUNC2();
        } else {
            // TODO better error message
            FUNC7("extra keyword arguments given");
        }
    }
}
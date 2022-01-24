#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_unary_op_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_14__ {int /*<<< orphan*/  neg; } ;
struct TYPE_13__ {TYPE_2__ mpz; } ;
typedef  TYPE_1__ mp_obj_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_OBJ_NULL ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
#define  MP_UNARY_OP_ABS 133 
#define  MP_UNARY_OP_BOOL 132 
#define  MP_UNARY_OP_HASH 131 
#define  MP_UNARY_OP_INVERT 130 
#define  MP_UNARY_OP_NEGATIVE 129 
#define  MP_UNARY_OP_POSITIVE 128 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*) ; 

mp_obj_t FUNC10(mp_unary_op_t op, mp_obj_t o_in) {
    mp_obj_int_t *o = FUNC2(o_in);
    switch (op) {
        case MP_UNARY_OP_BOOL: return FUNC4(!FUNC7(&o->mpz));
        case MP_UNARY_OP_HASH: return FUNC1(FUNC6(&o->mpz));
        case MP_UNARY_OP_POSITIVE: return o_in;
        case MP_UNARY_OP_NEGATIVE: { mp_obj_int_t *o2 = FUNC3(); FUNC8(&o2->mpz, &o->mpz); return FUNC0(o2); }
        case MP_UNARY_OP_INVERT: { mp_obj_int_t *o2 = FUNC3(); FUNC9(&o2->mpz, &o->mpz); return FUNC0(o2); }
        case MP_UNARY_OP_ABS: {
            mp_obj_int_t *self = FUNC2(o_in);
            if (self->mpz.neg == 0) {
                return o_in;
            }
            mp_obj_int_t *self2 = FUNC3();
            FUNC5(&self2->mpz, &self->mpz);
            return FUNC0(self2);
        }
        default: return MP_OBJ_NULL; // op not supported
    }
}
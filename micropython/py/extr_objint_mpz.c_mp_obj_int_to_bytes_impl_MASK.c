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
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_3__ {int /*<<< orphan*/  mpz; } ;
typedef  TYPE_1__ mp_obj_int_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mp_type_int ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 

void FUNC5(mp_obj_t self_in, bool big_endian, size_t len, byte *buf) {
    FUNC1(FUNC3(self_in, &mp_type_int));
    mp_obj_int_t *self = FUNC0(self_in);
    FUNC2(buf, 0, len);
    FUNC4(&self->mpz, big_endian, len, buf);
}
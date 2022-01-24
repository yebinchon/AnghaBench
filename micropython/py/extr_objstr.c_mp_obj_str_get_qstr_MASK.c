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
typedef  int /*<<< orphan*/  qstr ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_3__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
typedef  TYPE_1__ mp_obj_str_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mp_type_str ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

qstr FUNC6(mp_obj_t self_in) {
    if (FUNC3(self_in)) {
        return FUNC0(self_in);
    } else if (FUNC4(self_in, &mp_type_str)) {
        mp_obj_str_t *self = FUNC1(self_in);
        return FUNC5((char*)self->data, self->len);
    } else {
        FUNC2(self_in);
    }
}
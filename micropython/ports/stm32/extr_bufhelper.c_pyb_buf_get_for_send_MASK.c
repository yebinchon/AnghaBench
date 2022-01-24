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
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_4__ {int len; char typecode; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ mp_buffer_info_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  MP_BUFFER_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(mp_obj_t o, mp_buffer_info_t *bufinfo, byte *tmp_data) {
    if (FUNC2(o)) {
        tmp_data[0] = FUNC1(o);
        bufinfo->buf = tmp_data;
        bufinfo->len = 1;
        bufinfo->typecode = 'B';
    } else {
        FUNC0(o, bufinfo, MP_BUFFER_READ);
    }
}
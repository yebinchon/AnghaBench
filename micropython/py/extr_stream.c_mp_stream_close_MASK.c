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
typedef  scalar_t__ mp_uint_t ;
struct TYPE_3__ {scalar_t__ (* ioctl ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;} ;
typedef  TYPE_1__ mp_stream_p_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_STREAM_CLOSE ; 
 scalar_t__ MP_STREAM_ERROR ; 
 int /*<<< orphan*/  mp_const_none ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

mp_obj_t FUNC3(mp_obj_t stream) {
    const mp_stream_p_t *stream_p = FUNC0(stream);
    int error;
    mp_uint_t res = stream_p->ioctl(stream, MP_STREAM_CLOSE, 0, &error);
    if (res == MP_STREAM_ERROR) {
        FUNC1(error);
    }
    return mp_const_none;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_MAP_LOOKUP_REMOVE_IF_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

mp_obj_t FUNC1(mp_obj_t self_in, mp_obj_t key) {
    mp_obj_t args[2] = {self_in, key};
    FUNC0(2, args, MP_MAP_LOOKUP_REMOVE_IF_FOUND);
    return self_in;
}
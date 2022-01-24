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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  netutils_endian_t ;
typedef  int /*<<< orphan*/  mp_uint_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

mp_obj_t FUNC3(uint8_t *ip, mp_uint_t port, netutils_endian_t endian) {
    mp_obj_t tuple[2] = {
        tuple[0] = FUNC2(ip, endian),
        tuple[1] = FUNC0(port),
    };
    return FUNC1(2, tuple);
}
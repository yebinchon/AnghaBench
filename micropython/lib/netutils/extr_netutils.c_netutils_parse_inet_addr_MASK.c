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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

mp_uint_t FUNC3(mp_obj_t addr_in, uint8_t *out_ip, netutils_endian_t endian) {
    mp_obj_t *addr_items;
    FUNC0(addr_in, 2, &addr_items);
    FUNC2(addr_items[0], out_ip, endian);
    return FUNC1(addr_items[1]);
}
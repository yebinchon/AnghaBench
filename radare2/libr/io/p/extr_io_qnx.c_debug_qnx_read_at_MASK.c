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
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;
typedef  int ut32 ;

/* Variables and functions */
 scalar_t__ UT64_MAX ; 
 scalar_t__ c_addr ; 
 scalar_t__ c_buff ; 
 int c_size ; 
 int /*<<< orphan*/  desc ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4 (ut8 *buf, int sz, ut64 addr) {
	ut32 size_max = 500;
	ut32 packets = sz / size_max;
	ut32 last = sz % size_max;
	ut32 x;
	if (c_buff && addr != UT64_MAX && addr == c_addr) {
		FUNC1 (buf, c_buff, sz);
		return sz;
	}
	if (sz < 1 || addr >= UT64_MAX) {
		return -1;
	}
	for (x = 0; x < packets; x++) {
		FUNC2 (desc, addr + x * size_max, (buf + x * size_max), size_max);
	}
	if (last) {
		FUNC2 (desc, addr + x * size_max, (buf + x * size_max), last);
	}
	c_addr = addr;
	c_size = sz;
#if SILLY_CACHE
	free (c_buff);
	c_buff = r_mem_dup (buf, sz);
#endif
	return sz;
}
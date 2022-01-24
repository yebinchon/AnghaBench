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
struct perf_event_attr {int disabled; int bp_addr; int bp_len; int /*<<< orphan*/  bp_type; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  attr ;
typedef  int __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  HW_BREAKPOINT_R ; 
 int /*<<< orphan*/  PERF_TYPE_BREAKPOINT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct perf_event_attr*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(int len)
{
	struct perf_event_attr attr;
	int fd;

	/* setup counters */
	FUNC1(&attr, 0, sizeof(attr));
	attr.disabled = 1;
	attr.type = PERF_TYPE_BREAKPOINT;
	attr.bp_type = HW_BREAKPOINT_R;
	/* bp_addr can point anywhere but needs to be aligned */
	attr.bp_addr = (__u64)(&attr) & 0xfffffffffffff800;
	attr.bp_len = len;
	fd = FUNC2(&attr, 0, -1, -1, 0);
	if (fd < 0)
		return false;
	FUNC0(fd);
	return true;
}
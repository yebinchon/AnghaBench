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
struct TYPE_3__ {int size; int /*<<< orphan*/  time_stamp; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ zend_perf_jitdump_record ;
typedef  int /*<<< orphan*/  rec ;

/* Variables and functions */
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  ZEND_PERF_JITDUMP_RECORD_CLOSE ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ jitdump_fd ; 
 scalar_t__ jitdump_mem ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	if (jitdump_fd >= 0) {
		zend_perf_jitdump_record rec;

		rec.event      = ZEND_PERF_JITDUMP_RECORD_CLOSE;
		rec.size       = sizeof(rec);
		rec.time_stamp = FUNC3();
		FUNC4(jitdump_fd, &rec, sizeof(rec));
		FUNC0(jitdump_fd);

		if (jitdump_mem != MAP_FAILED) {
			FUNC1(jitdump_mem, FUNC2(_SC_PAGESIZE));
		}
	}
}
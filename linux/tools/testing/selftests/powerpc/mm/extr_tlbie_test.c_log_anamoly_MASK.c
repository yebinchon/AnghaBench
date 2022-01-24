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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/ ** fp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static inline void FUNC4(unsigned int tid, unsigned int *addr,
			       unsigned int expected, unsigned int observed)
{
	FILE *f = fp[tid];

	FUNC3(f, "Thread %02d: Addr 0x%lx: Expected 0x%x, Observed 0x%x\n",
	        tid, (unsigned long)addr, expected, observed);
	FUNC3(f, "Thread %02d: Expected Thread id   = %02d\n", tid, FUNC1(expected));
	FUNC3(f, "Thread %02d: Observed Thread id   = %02d\n", tid, FUNC1(observed));
	FUNC3(f, "Thread %02d: Expected Word offset = %03d\n", tid, FUNC2(expected));
	FUNC3(f, "Thread %02d: Observed Word offset = %03d\n", tid, FUNC2(observed));
	FUNC3(f, "Thread %02d: Expected sweep-id    = 0x%x\n", tid, FUNC0(expected));
	FUNC3(f, "Thread %02d: Observed sweep-id    = 0x%x\n", tid, FUNC0(observed));
	FUNC3(f, "----------------------------------------------------------\n");
}
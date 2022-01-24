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
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_futex ; 
 long FUNC0 (int /*<<< orphan*/ ,void*,int,int,struct timespec*,void*,int) ; 

__attribute__((used)) static long FUNC1(void *addr1, int op, int val1, struct timespec *timeout,
		      void *addr2, int val3)
{
	return FUNC0(SYS_futex, addr1, op, val1, timeout, addr2, val3);
}
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
typedef  int /*<<< orphan*/  nbuf ;

/* Variables and functions */
 int /*<<< orphan*/  MyProcPort ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static const char *
FUNC2(void)
{
	/* See comments in assign_tcp_keepalives_idle */
	static char nbuf[16];

	FUNC1(nbuf, sizeof(nbuf), "%d", FUNC0(MyProcPort));
	return nbuf;
}
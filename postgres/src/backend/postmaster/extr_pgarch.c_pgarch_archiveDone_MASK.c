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

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(char *xlog)
{
	char		rlogready[MAXPGPATH];
	char		rlogdone[MAXPGPATH];

	FUNC0(rlogready, xlog, ".ready");
	FUNC0(rlogdone, xlog, ".done");
	(void) FUNC1(rlogready, rlogdone, WARNING);
}
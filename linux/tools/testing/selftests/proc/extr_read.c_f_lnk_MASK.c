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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,char*,int) ; 

__attribute__((used)) static void FUNC3(DIR *d, const char *filename)
{
	char buf[4096];
	ssize_t rv;

	rv = FUNC2(FUNC1(d), filename, buf, sizeof(buf));
	FUNC0((0 <= rv && rv <= sizeof(buf)) || rv == -1);
}
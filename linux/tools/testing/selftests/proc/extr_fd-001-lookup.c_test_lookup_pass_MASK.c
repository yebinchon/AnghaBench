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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (struct stat*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(const char *pathname)
{
	struct stat st;
	ssize_t rv;

	FUNC3(&st, 0, sizeof(struct stat));
	rv = FUNC2(pathname, &st);
	FUNC1(rv == 0);
	FUNC1(FUNC0(st.st_mode));
}
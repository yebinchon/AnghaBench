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
struct win_version_info {int major; int minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct win_version_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int win_ver ; 

void FUNC9(void)
{
	struct win_version_info ver;
	FUNC0(&ver);

	win_ver = (ver.major << 8) | ver.minor;

	FUNC6();
	FUNC5();
	FUNC3();
	FUNC8();
	FUNC1();
	FUNC2();
	FUNC4();
	FUNC7();
}
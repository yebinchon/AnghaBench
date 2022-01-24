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
struct dirent {scalar_t__ d_type; int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(int fd)
{
	DIR *d;
	struct dirent *de;

	d = FUNC1(fd);
	FUNC0(*d);

	de = FUNC3(d);
	FUNC0(FUNC2(de->d_name, "."));
	FUNC0(de->d_type == DT_DIR);

	de = FUNC3(d);
	FUNC0(FUNC2(de->d_name, ".."));
	FUNC0(de->d_type == DT_DIR);

	de = FUNC3(d);
	FUNC0(!de);
}
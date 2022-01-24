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
struct dirent {int dummy; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 struct dirent* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dirent *FUNC2(DIR *d)
{
	struct dirent *de;

	errno = 0;
	de = FUNC1(d);
	FUNC0(de || errno == 0);
	return de;
}
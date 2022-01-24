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
typedef  int /*<<< orphan*/  tz ;
struct timezone {int tz_minuteswest; } ;
struct timeval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timezone*) ; 
 int /*<<< orphan*/  FUNC1 (struct timezone*,int /*<<< orphan*/ ,int) ; 

int FUNC2(void)
{
	struct timezone tz;
	struct timeval tv;

	FUNC1(&tz, 0, sizeof(tz));
	FUNC0(&tv, &tz);
	return tz.tz_minuteswest;
}
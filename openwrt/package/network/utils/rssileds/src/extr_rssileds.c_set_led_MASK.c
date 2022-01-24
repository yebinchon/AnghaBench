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
struct led {unsigned char state; int /*<<< orphan*/  controlfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct led *led, unsigned char value)
{
	char buf[8];

	if ( ! led )
		return -1;

	if ( ! led->controlfd )
		return -1;

	if ( led->state == value )
		return 0;

	FUNC3(buf, 8, "%d", value);

	FUNC2(led->controlfd);

	if ( ! FUNC1(buf, sizeof(char), FUNC4(buf), led->controlfd) )
		return -2;

	FUNC0(led->controlfd);
	led->state=value;

	return 0;
}
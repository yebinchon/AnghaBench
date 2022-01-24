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
struct bh_event {char* action; char* name; char* seen; } ;

/* Variables and functions */
 int FUNC0 (struct bh_event*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct bh_event *event)
{
	int ret;

	ret = FUNC0(event, 0, "HOME=%s", "/");
	if (ret)
		return ret;

	ret = FUNC0(event, 0, "PATH=%s",
					"/sbin:/bin:/usr/sbin:/usr/bin");
	if (ret)
		return ret;

	ret = FUNC0(event, 0, "SUBSYSTEM=%s", "button");
	if (ret)
		return ret;

	ret = FUNC0(event, 0, "ACTION=%s", event->action);
	if (ret)
		return ret;

	ret = FUNC0(event, 0, "BUTTON=%s", event->name);
	if (ret)
		return ret;

	ret = FUNC0(event, 0, "SEEN=%ld", event->seen);
	if (ret)
		return ret;

	ret = FUNC0(event, 0, "SEQNUM=%llu", FUNC1());

	return ret;
}
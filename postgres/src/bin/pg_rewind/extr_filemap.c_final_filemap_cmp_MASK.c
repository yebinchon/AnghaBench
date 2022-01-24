#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ action; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ file_entry_t ;

/* Variables and functions */
 scalar_t__ FILE_ACTION_REMOVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const void *a, const void *b)
{
	file_entry_t *fa = *((file_entry_t **) a);
	file_entry_t *fb = *((file_entry_t **) b);

	if (fa->action > fb->action)
		return 1;
	if (fa->action < fb->action)
		return -1;

	if (fa->action == FILE_ACTION_REMOVE)
		return FUNC0(fb->path, fa->path);
	else
		return FUNC0(fa->path, fb->path);
}
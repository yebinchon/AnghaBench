#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* next; void* arg; int /*<<< orphan*/  callback; } ;
typedef  TYPE_1__ ResourceReleaseCallbackItem ;
typedef  int /*<<< orphan*/  ResourceReleaseCallback ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* ResourceRelease_callbacks ; 
 int /*<<< orphan*/  TopMemoryContext ; 

void
FUNC1(ResourceReleaseCallback callback, void *arg)
{
	ResourceReleaseCallbackItem *item;

	item = (ResourceReleaseCallbackItem *)
		FUNC0(TopMemoryContext,
						   sizeof(ResourceReleaseCallbackItem));
	item->callback = callback;
	item->arg = arg;
	item->next = ResourceRelease_callbacks;
	ResourceRelease_callbacks = item;
}
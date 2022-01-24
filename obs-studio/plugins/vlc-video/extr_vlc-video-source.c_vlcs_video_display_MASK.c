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
typedef  unsigned long long uint64_t ;
struct TYPE_2__ {scalar_t__ timestamp; } ;
struct vlc_source {TYPE_1__ frame; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ time_start ; 

__attribute__((used)) static void FUNC3(void *data, void *picture)
{
	struct vlc_source *c = data;
	c->frame.timestamp = (uint64_t)FUNC1() * 1000ULL - time_start;
	FUNC2(c->source, &c->frame);

	FUNC0(picture);
}
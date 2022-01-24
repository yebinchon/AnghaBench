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
struct TYPE_3__ {scalar_t__ monitor_source; int /*<<< orphan*/  monitor_source_name; int /*<<< orphan*/  description; } ;
typedef  TYPE_1__ pa_sink_info ;
typedef  int /*<<< orphan*/  pa_context ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 scalar_t__ PA_INVALID_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(pa_context *c, const pa_sink_info *i, int eol,
			      void *userdata)
{
	FUNC0(c);
	if (eol != 0 || i->monitor_source == PA_INVALID_INDEX)
		goto skip;

	FUNC1((obs_property_t *)userdata, i->description,
				     i->monitor_source_name);

skip:
	FUNC2(0);
}
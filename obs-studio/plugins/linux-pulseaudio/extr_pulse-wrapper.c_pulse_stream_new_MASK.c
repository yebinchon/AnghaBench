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
typedef  int /*<<< orphan*/  pa_stream ;
typedef  int /*<<< orphan*/  pa_sample_spec ;
typedef  int /*<<< orphan*/  pa_proplist ;
typedef  int /*<<< orphan*/  pa_channel_map ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pulse_context ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

pa_stream *FUNC6(const char *name, const pa_sample_spec *ss,
			    const pa_channel_map *map)
{
	if (FUNC2() < 0)
		return NULL;

	FUNC3();

	pa_proplist *p = FUNC4();
	pa_stream *s =
		FUNC1(pulse_context, name, ss, map, p);
	FUNC0(p);

	FUNC5();
	return s;
}
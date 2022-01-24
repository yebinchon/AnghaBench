#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__** array; } ;
struct TYPE_8__ {int rendering_filter; int /*<<< orphan*/  filter_mutex; TYPE_1__ filters; } ;
typedef  TYPE_2__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(obs_source_t *source)
{
	obs_source_t *first_filter;

	FUNC3(&source->filter_mutex);
	first_filter = source->filters.array[0];
	FUNC0(first_filter);
	FUNC4(&source->filter_mutex);

	source->rendering_filter = true;
	FUNC2(first_filter);
	source->rendering_filter = false;

	FUNC1(first_filter);
}
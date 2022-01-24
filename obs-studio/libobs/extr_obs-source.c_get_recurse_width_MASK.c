#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {TYPE_2__** array; scalar_t__ num; } ;
struct TYPE_6__ {int /*<<< orphan*/  filter_mutex; TYPE_1__ filters; } ;
typedef  TYPE_2__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t FUNC3(obs_source_t *source)
{
	uint32_t width;

	FUNC1(&source->filter_mutex);

	width = (source->filters.num) ? FUNC0(source->filters.array[0])
				      : FUNC0(source);

	FUNC2(&source->filter_mutex);

	return width;
}
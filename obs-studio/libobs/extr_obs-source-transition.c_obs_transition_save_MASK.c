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
struct TYPE_7__ {char* name; } ;
struct TYPE_8__ {int /*<<< orphan*/  transition_cy; int /*<<< orphan*/  transition_cx; scalar_t__ transition_scale_type; scalar_t__ transition_mode; int /*<<< orphan*/  transition_alignment; TYPE_1__ context; struct TYPE_8__** transition_sources; } ;
typedef  TYPE_2__ obs_source_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(obs_source_t *tr, obs_data_t *data)
{
	obs_source_t *child;

	FUNC0(tr);
	child = FUNC3(tr) ? tr->transition_sources[1]
				      : tr->transition_sources[0];

	FUNC2(data, "transition_source_a",
			    child ? child->context.name : "");
	FUNC1(data, "transition_alignment",
			 tr->transition_alignment);
	FUNC1(data, "transition_mode", (int64_t)tr->transition_mode);
	FUNC1(data, "transition_scale_type",
			 (int64_t)tr->transition_scale_type);
	FUNC1(data, "transition_cx", tr->transition_cx);
	FUNC1(data, "transition_cy", tr->transition_cy);
	FUNC4(tr);
}
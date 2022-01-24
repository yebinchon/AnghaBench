#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* get_total_bytes ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef  TYPE_3__ obs_output_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

uint64_t FUNC4(const obs_output_t *output)
{
	if (!FUNC2(output, "obs_output_get_total_bytes"))
		return 0;
	if (!output->info.get_total_bytes)
		return 0;

	if (FUNC0(output) && !FUNC1(output))
		return 0;

	return output->info.get_total_bytes(output->context.data);
}
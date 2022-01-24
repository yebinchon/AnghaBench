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
struct obs_module_path {void* data; void* bin; } ;
struct TYPE_2__ {int /*<<< orphan*/  module_paths; } ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct obs_module_path*) ; 
 TYPE_1__* obs ; 

void FUNC2(const char *bin, const char *data)
{
	struct obs_module_path omp;

	if (!obs || !bin || !data)
		return;

	omp.bin = FUNC0(bin);
	omp.data = FUNC0(data);
	FUNC1(obs->module_paths, &omp);
}
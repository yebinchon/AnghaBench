#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct r_bin_mdmp_obj* misc_info_1; } ;
struct TYPE_4__ {int /*<<< orphan*/  memories; } ;
struct TYPE_6__ {TYPE_2__ misc_info; struct r_bin_mdmp_obj* function_table; struct r_bin_mdmp_obj* handle_data; struct r_bin_mdmp_obj* comments_w; struct r_bin_mdmp_obj* comments_a; struct r_bin_mdmp_obj* system_info; struct r_bin_mdmp_obj* exception; int /*<<< orphan*/  unloaded_modules; int /*<<< orphan*/  token_infos; int /*<<< orphan*/  threads; int /*<<< orphan*/  thread_infos; int /*<<< orphan*/  operations; int /*<<< orphan*/  modules; int /*<<< orphan*/  memory_infos; TYPE_1__ memories64; int /*<<< orphan*/  memories; int /*<<< orphan*/  ex_threads; } ;
struct r_bin_mdmp_obj {int /*<<< orphan*/ * b; struct r_bin_mdmp_obj* hdr; int /*<<< orphan*/  pe64_bins; int /*<<< orphan*/  pe32_bins; TYPE_3__ streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r_bin_mdmp_obj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct r_bin_mdmp_obj *obj) {
	if (!obj) {
		return;
	}

	FUNC2 (obj->streams.ex_threads);
	FUNC2 (obj->streams.memories);
	FUNC2 (obj->streams.memories64.memories);
	FUNC2 (obj->streams.memory_infos);
	FUNC2 (obj->streams.modules);
	FUNC2 (obj->streams.operations);
	FUNC2 (obj->streams.thread_infos);
	FUNC2 (obj->streams.threads);
	FUNC2 (obj->streams.token_infos);
	FUNC2 (obj->streams.unloaded_modules);
	FUNC0 (obj->streams.exception);
	FUNC0 (obj->streams.system_info);
	FUNC0 (obj->streams.comments_a);
	FUNC0 (obj->streams.comments_w);
	FUNC0 (obj->streams.handle_data);
	FUNC0 (obj->streams.function_table);
	FUNC0 (obj->streams.misc_info.misc_info_1);

	FUNC2 (obj->pe32_bins);
	FUNC2 (obj->pe64_bins);

	FUNC1 (obj->b);
	FUNC0 (obj->hdr);
	obj->b = NULL;
	FUNC0 (obj);

	return;
}
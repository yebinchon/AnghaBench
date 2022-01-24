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
struct update_info {scalar_t__ remote_package; scalar_t__ cache_package; scalar_t__ local_package; scalar_t__ curl; scalar_t__ header; struct update_info* url; struct update_info* local; struct update_info* cache; struct update_info* temp; struct update_info* user_agent; struct update_info* log_prefix; int /*<<< orphan*/  file_data; int /*<<< orphan*/  thread; scalar_t__ thread_created; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct update_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct update_info *info)
{
	if (!info)
		return;

	if (info->thread_created)
		FUNC5(info->thread, NULL);

	FUNC3(info->file_data);
	FUNC0(info->log_prefix);
	FUNC0(info->user_agent);
	FUNC0(info->temp);
	FUNC0(info->cache);
	FUNC0(info->local);
	FUNC0(info->url);

	if (info->header)
		FUNC2(info->header);
	if (info->curl)
		FUNC1(info->curl);
	if (info->local_package)
		FUNC4(info->local_package);
	if (info->cache_package)
		FUNC4(info->cache_package);
	if (info->remote_package)
		FUNC4(info->remote_package);
	FUNC0(info);
}
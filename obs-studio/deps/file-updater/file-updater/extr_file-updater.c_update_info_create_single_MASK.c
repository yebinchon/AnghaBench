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
struct update_info {int thread_created; int /*<<< orphan*/  thread; void* param; int /*<<< orphan*/  callback; void* url; void* user_agent; void* log_prefix; } ;
typedef  struct update_info update_info_t ;
typedef  int /*<<< orphan*/  confirm_file_callback_t ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 struct update_info* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct update_info*) ; 
 int /*<<< orphan*/  single_file_thread ; 

update_info_t *
FUNC3(const char *log_prefix, const char *user_agent,
			  const char *file_url,
			  confirm_file_callback_t confirm_callback, void *param)
{
	struct update_info *info;

	if (!log_prefix)
		log_prefix = "";

	info = FUNC1(sizeof(*info));
	info->log_prefix = FUNC0(log_prefix);
	info->user_agent = FUNC0(user_agent);
	info->url = FUNC0(file_url);
	info->callback = confirm_callback;
	info->param = param;

	if (FUNC2(&info->thread, NULL, single_file_thread, info) == 0)
		info->thread_created = true;

	return info;
}
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
struct update_info {char const* temp; int thread_created; int /*<<< orphan*/  thread; void* param; int /*<<< orphan*/  callback; int /*<<< orphan*/  url; void* cache; void* local; void* user_agent; void* log_prefix; } ;
typedef  struct update_info update_info_t ;
struct dstr {char const* array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  confirm_file_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 void* FUNC1 (char const*) ; 
 struct update_info* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,char const*) ; 
 char FUNC6 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct update_info*) ; 
 int /*<<< orphan*/  update_thread ; 

update_info_t *FUNC11(const char *log_prefix,
				  const char *user_agent,
				  const char *update_url, const char *local_dir,
				  const char *cache_dir,
				  confirm_file_callback_t confirm_callback,
				  void *param)
{
	struct update_info *info;
	struct dstr dir = {0};

	if (!log_prefix)
		log_prefix = "";

	if (FUNC9(cache_dir) < 0) {
		FUNC0(LOG_WARNING, "%sCould not create cache directory %s",
		     log_prefix, cache_dir);
		return NULL;
	}

	FUNC5(&dir, cache_dir);
	if (FUNC6(&dir) != '/' && FUNC6(&dir) != '\\')
		FUNC4(&dir, '/');
	FUNC3(&dir, ".temp");

	if (FUNC9(dir.array) < 0) {
		FUNC0(LOG_WARNING, "%sCould not create temp directory %s",
		     log_prefix, cache_dir);
		FUNC7(&dir);
		return NULL;
	}

	info = FUNC2(sizeof(*info));
	info->log_prefix = FUNC1(log_prefix);
	info->user_agent = FUNC1(user_agent);
	info->temp = dir.array;
	info->local = FUNC1(local_dir);
	info->cache = FUNC1(cache_dir);
	info->url = FUNC8(update_url, "package.json");
	info->callback = confirm_callback;
	info->param = param;

	if (FUNC10(&info->thread, NULL, update_thread, info) == 0)
		info->thread_created = true;

	return info;
}
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
struct update_info {char const* user_agent; void* header; int /*<<< orphan*/  etag_local; int /*<<< orphan*/  cache; void* cache_package; int /*<<< orphan*/  local; void* local_package; int /*<<< orphan*/  curl; } ;
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static bool FUNC10(struct update_info *info)
{
	struct dstr user_agent = {0};

	info->curl = FUNC1();
	if (!info->curl) {
		FUNC9("Could not initialize Curl");
		return false;
	}

	info->local_package = FUNC6(info->local, "package.json");
	info->cache_package = FUNC6(info->cache, "package.json");

	obs_data_t *metadata = FUNC6(info->cache, "meta.json");
	if (metadata) {
		const char *etag = FUNC7(metadata, "etag");
		if (etag) {
			struct dstr if_none_match = {0};
			FUNC4(&if_none_match, "If-None-Match: ");
			FUNC3(&if_none_match, etag);

			info->etag_local = FUNC0(etag);

			info->header = FUNC2(info->header,
							 if_none_match.array);

			FUNC5(&if_none_match);
		}

		FUNC8(metadata);
	}

	FUNC4(&user_agent, "User-Agent: ");
	FUNC3(&user_agent, info->user_agent);

	info->header = FUNC2(info->header, user_agent.array);

	FUNC5(&user_agent);
	return true;
}
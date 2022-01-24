#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ingest {int /*<<< orphan*/  url; int /*<<< orphan*/  name; int /*<<< orphan*/  member_0; } ;
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_3__ {scalar_t__ num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 TYPE_1__ cur_ingests ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,struct ingest*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/ * FUNC16 (char const*,char*) ; 

__attribute__((used)) static bool FUNC17(const char *json, bool write_file)
{
	json_t *root;
	json_t *ingests;
	bool success = false;
	char *cache_old;
	char *cache_new;
	size_t count;

	root = FUNC9(json, 0, NULL);
	if (!root)
		goto finish;

	ingests = FUNC10(root, "ingests");
	if (!ingests)
		goto finish;

	count = FUNC7(ingests);
	if (count <= 1 && cur_ingests.num)
		goto finish;

	FUNC5();

	for (size_t i = 0; i < count; i++) {
		json_t *item = FUNC6(ingests, i);
		json_t *item_name = FUNC10(item, "name");
		json_t *item_url = FUNC10(item, "url_template");
		struct ingest ingest = {0};
		struct dstr url = {0};

		if (!item_name || !item_url)
			continue;

		const char *url_str = FUNC11(item_url);
		const char *name_str = FUNC11(item_name);

		/* At the moment they currently mis-spell "deprecated",
		 * but that may change in the future, so blacklist both */
		if (FUNC16(name_str, "deprecated") != NULL ||
		    FUNC16(name_str, "depracated") != NULL)
			continue;

		FUNC3(&url, url_str);
		FUNC4(&url, "/{stream_key}", "");

		ingest.name = FUNC1(name_str);
		ingest.url = url.array;

		FUNC2(cur_ingests, &ingest);
	}

	if (!cur_ingests.num)
		goto finish;

	success = true;

	if (!write_file)
		goto finish;

	cache_old = FUNC12("twitch_ingests.json");
	cache_new = FUNC12("twitch_ingests.new.json");

	FUNC13(cache_new, json, FUNC15(json), false);
	FUNC14(cache_old, cache_new, NULL);

	FUNC0(cache_old);
	FUNC0(cache_new);

finish:
	if (root)
		FUNC8(root);
	return success;
}
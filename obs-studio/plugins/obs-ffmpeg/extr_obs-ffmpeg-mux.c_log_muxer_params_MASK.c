#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ffmpeg_muxer {int dummy; } ;
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ **,char const*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC9(struct ffmpeg_muxer *stream, const char *settings)
{
	int ret;

	AVDictionary *dict = NULL;
	if ((ret = FUNC3(&dict, settings, "=", " ", 0))) {
		FUNC8("Failed to parse muxer settings: %s\n%s", FUNC4(ret),
		     settings);

		FUNC1(&dict);
		return;
	}

	if (FUNC0(dict) > 0) {
		struct dstr str = {0};

		AVDictionaryEntry *entry = NULL;
		while ((entry = FUNC2(dict, "", entry,
					    AV_DICT_IGNORE_SUFFIX)))
			FUNC5(&str, "\n\t%s=%s", entry->key, entry->value);

		FUNC7("Using muxer settings:%s", str.array);
		FUNC6(&str);
	}

	FUNC1(&dict);
}
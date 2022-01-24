#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  url; int /*<<< orphan*/  muxer_settings; } ;
struct ffmpeg_data {TYPE_1__ config; TYPE_4__* output; } ;
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {scalar_t__* filename; int /*<<< orphan*/  pb; TYPE_2__* oformat; } ;
struct TYPE_9__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
struct TYPE_8__ {int flags; } ;
typedef  TYPE_2__ AVOutputFormat ;
typedef  TYPE_3__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int AVFMT_NOFILE ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ffmpeg_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline bool FUNC12(struct ffmpeg_data *data)
{
	AVOutputFormat *format = data->output->oformat;
	int ret;

	AVDictionary *dict = NULL;
	if ((ret = FUNC3(&dict, data->config.muxer_settings, "=",
					" ", 0))) {
		FUNC10(LOG_WARNING, data,
				 "Failed to parse muxer settings: %s\n%s",
				 FUNC4(ret), data->config.muxer_settings);

		FUNC1(&dict);
		return false;
	}

	if (FUNC0(dict) > 0) {
		struct dstr str = {0};

		AVDictionaryEntry *entry = NULL;
		while ((entry = FUNC2(dict, "", entry,
					    AV_DICT_IGNORE_SUFFIX)))
			FUNC8(&str, "\n\t%s=%s", entry->key, entry->value);

		FUNC7(LOG_INFO, "Using muxer settings: %s", str.array);
		FUNC9(&str);
	}

	if ((format->flags & AVFMT_NOFILE) == 0) {
		ret = FUNC6(&data->output->pb, data->config.url,
				 AVIO_FLAG_WRITE, NULL, &dict);
		if (ret < 0) {
			FUNC10(LOG_WARNING, data,
					 "Couldn't open '%s', %s",
					 data->config.url, FUNC4(ret));
			FUNC1(&dict);
			return false;
		}
	}

	FUNC11(data->output->filename, data->config.url,
		sizeof(data->output->filename));
	data->output->filename[sizeof(data->output->filename) - 1] = 0;

	ret = FUNC5(data->output, &dict);
	if (ret < 0) {
		FUNC10(LOG_WARNING, data, "Error opening '%s': %s",
				 data->config.url, FUNC4(ret));
		return false;
	}

	if (FUNC0(dict) > 0) {
		struct dstr str = {0};

		AVDictionaryEntry *entry = NULL;
		while ((entry = FUNC2(dict, "", entry,
					    AV_DICT_IGNORE_SUFFIX)))
			FUNC8(&str, "\n\t%s=%s", entry->key, entry->value);

		FUNC7(LOG_INFO, "Invalid muxer settings: %s", str.array);
		FUNC9(&str);
	}

	FUNC1(&dict);

	return true;
}
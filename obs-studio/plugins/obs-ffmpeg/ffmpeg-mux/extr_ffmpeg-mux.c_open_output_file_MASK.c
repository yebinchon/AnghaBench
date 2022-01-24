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
struct TYPE_7__ {char* file; char* muxer_settings; } ;
struct ffmpeg_mux {TYPE_1__ params; TYPE_4__* output; } ;
struct TYPE_10__ {scalar_t__* filename; int /*<<< orphan*/  pb; TYPE_2__* oformat; } ;
struct TYPE_9__ {char* key; char* value; } ;
struct TYPE_8__ {int flags; } ;
typedef  TYPE_2__ AVOutputFormat ;
typedef  TYPE_3__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int AVFMT_NOFILE ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int FFM_ERROR ; 
 int FFM_SUCCESS ; 
 int FFM_UNSUPPORTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ **,char*,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,char*,int) ; 

__attribute__((used)) static inline int FUNC10(struct ffmpeg_mux *ffm)
{
	AVOutputFormat *format = ffm->output->oformat;
	int ret;

	if ((format->flags & AVFMT_NOFILE) == 0) {
		ret = FUNC6(&ffm->output->pb, ffm->params.file,
				AVIO_FLAG_WRITE);
		if (ret < 0) {
			FUNC7(stderr, "Couldn't open '%s', %s",
				ffm->params.file, FUNC4(ret));
			return FFM_ERROR;
		}
	}

	FUNC9(ffm->output->filename, ffm->params.file,
		sizeof(ffm->output->filename));
	ffm->output->filename[sizeof(ffm->output->filename) - 1] = 0;

	AVDictionary *dict = NULL;
	if ((ret = FUNC3(&dict, ffm->params.muxer_settings, "=",
					" ", 0))) {
		FUNC7(stderr, "Failed to parse muxer settings: %s\n%s",
			FUNC4(ret), ffm->params.muxer_settings);

		FUNC1(&dict);
	}

	if (FUNC0(dict) > 0) {
		FUNC8("Using muxer settings:");

		AVDictionaryEntry *entry = NULL;
		while ((entry = FUNC2(dict, "", entry,
					    AV_DICT_IGNORE_SUFFIX)))
			FUNC8("\n\t%s=%s", entry->key, entry->value);

		FUNC8("\n");
	}

	ret = FUNC5(ffm->output, &dict);
	if (ret < 0) {
		FUNC7(stderr, "Error opening '%s': %s", ffm->params.file,
			FUNC4(ret));

		FUNC1(&dict);

		return ret == -22 ? FFM_UNSUPPORTED : FFM_ERROR;
	}

	FUNC1(&dict);

	return FFM_SUCCESS;
}
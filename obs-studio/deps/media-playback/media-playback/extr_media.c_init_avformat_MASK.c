#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  path; void* has_audio; void* has_video; int /*<<< orphan*/  hw; TYPE_5__* fmt; int /*<<< orphan*/  buffering; int /*<<< orphan*/  is_local_file; scalar_t__* format_name; } ;
typedef  TYPE_2__ mp_media_t ;
struct TYPE_8__ {TYPE_2__* opaque; int /*<<< orphan*/  callback; } ;
struct TYPE_10__ {TYPE_1__ interrupt_callback; } ;
typedef  int /*<<< orphan*/  AVInputFormat ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__*) ; 
 TYPE_5__* FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_5__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  interrupt_callback ; 
 void* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(mp_media_t *m)
{
	AVInputFormat *format = NULL;

	if (m->format_name && *m->format_name) {
		format = FUNC2(m->format_name);
		if (!format)
			FUNC6(LOG_INFO,
			     "MP: Unable to find input format for "
			     "'%s'",
			     m->path);
	}

	AVDictionary *opts = NULL;
	if (m->buffering && !m->is_local_file)
		FUNC1(&opts, "buffer_size", m->buffering, 0);

	m->fmt = FUNC3();
	m->fmt->interrupt_callback.callback = interrupt_callback;
	m->fmt->interrupt_callback.opaque = m;

	int ret = FUNC5(&m->fmt, m->path, format,
				      opts ? &opts : NULL);
	FUNC0(&opts);

	if (ret < 0) {
		FUNC6(LOG_WARNING, "MP: Failed to open media: '%s'", m->path);
		return false;
	}

	if (FUNC4(m->fmt, NULL) < 0) {
		FUNC6(LOG_WARNING, "MP: Failed to find stream info for '%s'",
		     m->path);
		return false;
	}

	m->has_video = FUNC7(m, AVMEDIA_TYPE_VIDEO, m->hw);
	m->has_audio = FUNC7(m, AVMEDIA_TYPE_AUDIO, m->hw);

	if (!m->has_video && !m->has_audio) {
		FUNC6(LOG_WARNING,
		     "MP: Could not initialize audio or video: "
		     "'%s'",
		     m->path);
		return false;
	}

	return true;
}
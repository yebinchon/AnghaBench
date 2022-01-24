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
struct ffmpeg_source {int destroy_media; scalar_t__ media_valid; scalar_t__ close_when_inactive; int /*<<< orphan*/  source; scalar_t__ is_clear_on_media_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void *opaque)
{
	struct ffmpeg_source *s = opaque;
	if (s->is_clear_on_media_end) {
		FUNC0(s->source, NULL);
		if (s->close_when_inactive && s->media_valid)
			s->destroy_media = true;
	}
}
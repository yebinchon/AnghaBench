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
struct ffmpeg_source {struct ffmpeg_source* input_format; struct ffmpeg_source* input; struct ffmpeg_source* sws_data; int /*<<< orphan*/ * sws_ctx; int /*<<< orphan*/  media; scalar_t__ media_valid; scalar_t__ hotkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ffmpeg_source*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct ffmpeg_source *s = data;

	if (s->hotkey)
		FUNC2(s->hotkey);
	if (s->media_valid)
		FUNC1(&s->media);

	if (s->sws_ctx != NULL)
		FUNC3(s->sws_ctx);
	FUNC0(s->sws_data);
	FUNC0(s->input);
	FUNC0(s->input_format);
	FUNC0(s);
}
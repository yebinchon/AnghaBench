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
struct ffmpeg_source {int /*<<< orphan*/  source; scalar_t__ is_local_file; int /*<<< orphan*/  is_looping; int /*<<< orphan*/  media; scalar_t__ media_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ffmpeg_source*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ffmpeg_source *s)
{
	if (!s->media_valid)
		FUNC0(s);

	if (s->media_valid) {
		FUNC1(&s->media, s->is_looping);
		if (s->is_local_file)
			FUNC2(s->source);
	}
}
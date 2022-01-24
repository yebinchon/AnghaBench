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
struct ffmpeg_source {int /*<<< orphan*/  source; } ;
typedef  int /*<<< orphan*/  obs_hotkey_t ;
typedef  int obs_hotkey_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ffmpeg_source*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data, obs_hotkey_id id, obs_hotkey_t *hotkey,
			   bool pressed)
{
	FUNC0(id);
	FUNC0(*hotkey);
	FUNC0(pressed);

	struct ffmpeg_source *s = data;
	if (FUNC2(s->source))
		FUNC1(s);
}
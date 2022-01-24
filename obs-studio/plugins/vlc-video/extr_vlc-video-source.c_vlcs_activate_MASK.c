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
struct vlc_source {scalar_t__ behavior; int /*<<< orphan*/  media_list_player; } ;

/* Variables and functions */
 scalar_t__ BEHAVIOR_PAUSE_UNPAUSE ; 
 scalar_t__ BEHAVIOR_STOP_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *data)
{
	struct vlc_source *c = data;

	if (c->behavior == BEHAVIOR_STOP_RESTART) {
		FUNC0(c->media_list_player);

	} else if (c->behavior == BEHAVIOR_PAUSE_UNPAUSE) {
		FUNC0(c->media_list_player);
	}
}
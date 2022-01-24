#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int tracks; scalar_t__ has_video; } ;
struct ffmpeg_mux {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ffmpeg_mux*) ; 

__attribute__((used)) static inline bool FUNC1(struct ffmpeg_mux *ffm)
{
	if (ffm->params.has_video) {
		if (!FUNC0(ffm)) {
			return false;
		}
	}

	for (int i = 0; i < ffm->params.tracks; i++) {
		if (!FUNC0(ffm)) {
			return false;
		}
	}

	return true;
}
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
struct obs_source_frame {int dummy; } ;
struct ffmpeg_source {int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct obs_source_frame*) ; 

__attribute__((used)) static void FUNC1(void *opaque, struct obs_source_frame *f)
{
	struct ffmpeg_source *s = opaque;
	FUNC0(s->source, f);
}
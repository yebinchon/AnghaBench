#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct obs_source_frame {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; } ;
struct TYPE_7__ {int /*<<< orphan*/  last_frame_ts; int /*<<< orphan*/  async_texrender; int /*<<< orphan*/  async_textures; int /*<<< orphan*/  async_preload_frame; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct obs_source_frame const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,struct obs_source_frame const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(obs_source_t *source,
				  const struct obs_source_frame *frame)
{
	if (!FUNC5(source, "obs_source_preload_video"))
		return;
	if (!frame)
		return;

	FUNC1();

	if (FUNC6(source, frame)) {
		FUNC4(source->async_preload_frame);
		source->async_preload_frame = FUNC3(
			frame->format, frame->width, frame->height);
	}

	FUNC0(source->async_preload_frame, frame);
	FUNC7(source, source->async_preload_frame);
	FUNC8(source, source->async_preload_frame,
			      source->async_textures, source->async_texrender);

	source->last_frame_ts = frame->timestamp;

	FUNC2();
}
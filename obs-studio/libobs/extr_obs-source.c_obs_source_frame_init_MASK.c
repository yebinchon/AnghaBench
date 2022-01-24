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
typedef  void* uint32_t ;
struct video_frame {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct obs_source_frame {int format; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; void* height; void* width; } ;
typedef  enum video_format { ____Placeholder_video_format } video_format ;

/* Variables and functions */
 size_t MAX_AV_PLANES ; 
 int /*<<< orphan*/  FUNC0 (struct obs_source_frame*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct video_frame*,int,void*,void*) ; 

void FUNC2(struct obs_source_frame *frame,
			   enum video_format format, uint32_t width,
			   uint32_t height)
{
	struct video_frame vid_frame;

	if (!FUNC0(frame, "obs_source_frame_init"))
		return;

	FUNC1(&vid_frame, format, width, height);
	frame->format = format;
	frame->width = width;
	frame->height = height;

	for (size_t i = 0; i < MAX_AV_PLANES; i++) {
		frame->data[i] = vid_frame.data[i];
		frame->linesize[i] = vid_frame.linesize[i];
	}
}
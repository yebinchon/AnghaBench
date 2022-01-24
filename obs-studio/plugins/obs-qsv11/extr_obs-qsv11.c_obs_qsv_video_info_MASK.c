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
struct video_scale_info {int format; } ;
struct obs_qsv {int /*<<< orphan*/  encoder; } ;
typedef  enum video_format { ____Placeholder_video_format } video_format ;

/* Variables and functions */
 int VIDEO_FORMAT_NV12 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct video_scale_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void *data, struct video_scale_info *info)
{
	struct obs_qsv *obsqsv = data;
	enum video_format pref_format;

	pref_format = FUNC1(obsqsv->encoder);

	if (!FUNC2(pref_format)) {
		pref_format = FUNC2(info->format) ? info->format
							 : VIDEO_FORMAT_NV12;
	}

	info->format = pref_format;
	FUNC0(obsqsv->encoder, info);
}
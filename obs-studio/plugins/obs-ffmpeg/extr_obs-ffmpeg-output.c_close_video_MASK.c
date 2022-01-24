#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ffmpeg_data {int /*<<< orphan*/  vframe; TYPE_2__* vcodec; TYPE_1__* video; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {int /*<<< orphan*/  codec; } ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_A64_MULTI ; 
 scalar_t__ AV_CODEC_ID_A64_MULTI5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ffmpeg_data *data)
{
	FUNC2(data->video->codec);
	FUNC1(data->vframe);

	// This format for some reason derefs video frame
	// too many times
	if (data->vcodec->id == AV_CODEC_ID_A64_MULTI ||
	    data->vcodec->id == AV_CODEC_ID_A64_MULTI5)
		return;

	FUNC0(&data->vframe);
}
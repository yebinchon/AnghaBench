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
struct ffmpeg_output {int connecting; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_OUTPUT_CONNECT_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ffmpeg_output*) ; 

__attribute__((used)) static void *FUNC2(void *data)
{
	struct ffmpeg_output *output = data;

	if (!FUNC1(output))
		FUNC0(output->output,
				       OBS_OUTPUT_CONNECT_FAILED);

	output->connecting = false;
	return NULL;
}
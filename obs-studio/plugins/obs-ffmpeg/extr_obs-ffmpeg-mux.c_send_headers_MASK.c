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
struct ffmpeg_muxer {int /*<<< orphan*/  output; } ;
typedef  int /*<<< orphan*/  obs_encoder_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ffmpeg_muxer*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ffmpeg_muxer*) ; 

__attribute__((used)) static bool FUNC3(struct ffmpeg_muxer *stream)
{
	obs_encoder_t *aencoder;
	size_t idx = 0;

	if (!FUNC2(stream))
		return false;

	do {
		aencoder = FUNC0(stream->output, idx);
		if (aencoder) {
			if (!FUNC1(stream, aencoder, idx)) {
				return false;
			}
			idx++;
		}
	} while (aencoder);

	return true;
}
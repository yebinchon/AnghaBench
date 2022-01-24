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
struct ffmpeg_decode {scalar_t__ packet_buffer; scalar_t__ frame; scalar_t__ decoder; scalar_t__ hw_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ffmpeg_decode*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct ffmpeg_decode *decode)
{
	if (decode->hw_frame)
		FUNC0(decode->hw_frame);

	if (decode->decoder) {
		FUNC1(decode->decoder);
		FUNC0(decode->decoder);
	}

	if (decode->frame)
		FUNC0(decode->frame);

	if (decode->packet_buffer)
		FUNC2(decode->packet_buffer);

	FUNC3(decode, 0, sizeof(*decode));
}
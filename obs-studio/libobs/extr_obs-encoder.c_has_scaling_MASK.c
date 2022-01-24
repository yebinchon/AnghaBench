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
typedef  scalar_t__ uint32_t ;
struct obs_encoder {scalar_t__ scaled_width; scalar_t__ scaled_height; int /*<<< orphan*/  media; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(const struct obs_encoder *encoder)
{
	uint32_t video_width = FUNC1(encoder->media);
	uint32_t video_height = FUNC0(encoder->media);

	return encoder->scaled_width && encoder->scaled_height &&
	       (video_width != encoder->scaled_width ||
		video_height != encoder->scaled_height);
}
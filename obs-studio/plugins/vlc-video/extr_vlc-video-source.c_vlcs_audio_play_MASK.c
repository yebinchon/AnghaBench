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
typedef  unsigned long long uint64_t ;
struct TYPE_2__ {unsigned int frames; scalar_t__ timestamp; scalar_t__* data; int /*<<< orphan*/  speakers; int /*<<< orphan*/  format; } ;
struct vlc_source {unsigned int audio_capacity; TYPE_1__ audio; int /*<<< orphan*/  source; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ time_start ; 

__attribute__((used)) static void FUNC4(void *data, const void *samples, unsigned count,
			    int64_t pts)
{
	struct vlc_source *c = data;
	size_t size = FUNC1(c->audio.format, c->audio.speakers, count);

	if (c->audio_capacity < count) {
		c->audio.data[0] = FUNC0((void *)c->audio.data[0], size);
		c->audio_capacity = count;
	}

	FUNC2((void *)c->audio.data[0], samples, size);
	c->audio.timestamp = (uint64_t)pts * 1000ULL - time_start;
	c->audio.frames = count;

	FUNC3(c->source, &c->audio);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  timestamp; scalar_t__ frames; } ;
struct TYPE_8__ {size_t audio_storage_size; TYPE_2__ audio_data; } ;
typedef  TYPE_3__ obs_source_t ;
struct TYPE_6__ {int /*<<< orphan*/  audio; } ;
struct TYPE_9__ {TYPE_1__ audio; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const* const,size_t) ; 
 TYPE_4__* obs ; 

__attribute__((used)) static void FUNC5(obs_source_t *source, const uint8_t *const data[],
			    uint32_t frames, uint64_t ts)
{
	size_t planes = FUNC1(obs->audio.audio);
	size_t blocksize = FUNC0(obs->audio.audio);
	size_t size = (size_t)frames * blocksize;
	bool resize = source->audio_storage_size < size;

	source->audio_data.frames = frames;
	source->audio_data.timestamp = ts;

	for (size_t i = 0; i < planes; i++) {
		/* ensure audio storage capacity */
		if (resize) {
			FUNC2(source->audio_data.data[i]);
			source->audio_data.data[i] = FUNC3(size);
		}

		FUNC4(source->audio_data.data[i], data[i], size);
	}

	if (resize)
		source->audio_storage_size = size;
}
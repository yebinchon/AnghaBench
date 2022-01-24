#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t cache_size; } ;
struct TYPE_9__ {size_t num; int /*<<< orphan*/ * array; } ;
struct TYPE_8__ {int /*<<< orphan*/  input_mutex; int /*<<< orphan*/  data_mutex; int /*<<< orphan*/  update_semaphore; int /*<<< orphan*/ * cache; TYPE_1__ info; TYPE_5__ inputs; } ;
typedef  TYPE_2__ video_t ;
struct video_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct video_frame*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7(video_t *video)
{
	if (!video)
		return;

	FUNC6(video);

	for (size_t i = 0; i < video->inputs.num; i++)
		FUNC5(&video->inputs.array[i]);
	FUNC1(video->inputs);

	for (size_t i = 0; i < video->info.cache_size; i++)
		FUNC4((struct video_frame *)&video->cache[i]);

	FUNC2(video->update_semaphore);
	FUNC3(&video->data_mutex);
	FUNC3(&video->input_mutex);
	FUNC0(video);
}
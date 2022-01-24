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

/* Variables and functions */
 int /*<<< orphan*/  async_sync_test ; 
 int /*<<< orphan*/  buffering_async_sync_test ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sync_audio ; 
 int /*<<< orphan*/  sync_video ; 
 int /*<<< orphan*/  test_filter ; 
 int /*<<< orphan*/  test_random ; 
 int /*<<< orphan*/  test_sinewave ; 

bool FUNC1(void)
{
	FUNC0(&test_random);
	FUNC0(&test_sinewave);
	FUNC0(&test_filter);
	FUNC0(&async_sync_test);
	FUNC0(&buffering_async_sync_test);
	FUNC0(&sync_video);
	FUNC0(&sync_audio);
	return true;
}
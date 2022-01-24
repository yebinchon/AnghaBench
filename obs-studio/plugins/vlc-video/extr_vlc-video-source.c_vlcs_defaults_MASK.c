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
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  S_BEHAVIOR ; 
 int /*<<< orphan*/  S_BEHAVIOR_STOP_RESTART ; 
 int /*<<< orphan*/  S_LOOP ; 
 int /*<<< orphan*/  S_NETWORK_CACHING ; 
 int /*<<< orphan*/  S_SHUFFLE ; 
 int /*<<< orphan*/  S_SUBTITLE_ENABLE ; 
 int /*<<< orphan*/  S_SUBTITLE_TRACK ; 
 int /*<<< orphan*/  S_TRACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(obs_data_t *settings)
{
	FUNC0(settings, S_LOOP, true);
	FUNC0(settings, S_SHUFFLE, false);
	FUNC2(settings, S_BEHAVIOR,
				    S_BEHAVIOR_STOP_RESTART);
	FUNC1(settings, S_NETWORK_CACHING, 400);
	FUNC1(settings, S_TRACK, 1);
	FUNC0(settings, S_SUBTITLE_ENABLE, false);
	FUNC1(settings, S_SUBTITLE_TRACK, 1);
}
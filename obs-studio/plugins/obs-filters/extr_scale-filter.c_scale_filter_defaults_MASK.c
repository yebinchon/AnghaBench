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
 int /*<<< orphan*/  S_RESOLUTION ; 
 int /*<<< orphan*/  S_SAMPLING ; 
 int /*<<< orphan*/  S_SAMPLING_BICUBIC ; 
 int /*<<< orphan*/  S_UNDISTORT ; 
 int /*<<< orphan*/  T_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(obs_data_t *settings)
{
	FUNC1(settings, S_SAMPLING, S_SAMPLING_BICUBIC);
	FUNC1(settings, S_RESOLUTION, T_NONE);
	FUNC0(settings, S_UNDISTORT, 0);
}
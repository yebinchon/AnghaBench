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
 int /*<<< orphan*/  S_ATTACK_TIME ; 
 int /*<<< orphan*/  S_OUTPUT_GAIN ; 
 int /*<<< orphan*/  S_RATIO ; 
 int /*<<< orphan*/  S_RELEASE_TIME ; 
 int /*<<< orphan*/  S_SIDECHAIN_SOURCE ; 
 int /*<<< orphan*/  S_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(obs_data_t *s)
{
	FUNC0(s, S_RATIO, 10.0f);
	FUNC0(s, S_THRESHOLD, -18.0f);
	FUNC1(s, S_ATTACK_TIME, 6);
	FUNC1(s, S_RELEASE_TIME, 60);
	FUNC0(s, S_OUTPUT_GAIN, 0.0f);
	FUNC2(s, S_SIDECHAIN_SOURCE, "none");
}
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
 int /*<<< orphan*/  S_CLOSE_THRESHOLD ; 
 int /*<<< orphan*/  S_HOLD_TIME ; 
 int /*<<< orphan*/  S_OPEN_THRESHOLD ; 
 int /*<<< orphan*/  S_RELEASE_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(obs_data_t *s)
{
	FUNC0(s, S_OPEN_THRESHOLD, -26.0);
	FUNC0(s, S_CLOSE_THRESHOLD, -32.0);
	FUNC1(s, S_ATTACK_TIME, 25);
	FUNC1(s, S_HOLD_TIME, 200);
	FUNC1(s, S_RELEASE_TIME, 150);
}
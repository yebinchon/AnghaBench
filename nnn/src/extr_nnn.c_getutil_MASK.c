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
 int F_NORMAL ; 
 int F_NOTRACE ; 
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline bool FUNC1(char *util)
{
	return FUNC0("which", util, NULL, NULL, F_NORMAL | F_NOTRACE) == 0;
}
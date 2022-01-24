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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DatabasePath ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  TopMemoryContext ; 

void
FUNC2(const char *path)
{
	/* This should happen only once per process */
	FUNC0(!DatabasePath);
	DatabasePath = FUNC1(TopMemoryContext, path);
}
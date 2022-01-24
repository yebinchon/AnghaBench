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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

int FUNC1(const char* exeName)
{
    FUNC0(" \n");
    FUNC0("bad usage: \n");
    FUNC0(" \n");
    FUNC0("%s [Options] fileName \n", exeName);
    FUNC0(" \n");
    FUNC0("Options: \n");
    FUNC0("-#     : use #=[0-9] compression level (default:0 == random) \n");
    return 1;
}
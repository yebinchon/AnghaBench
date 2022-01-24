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
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  unlink_cb ; 

__attribute__((used)) static void FUNC3(char *path)
{
    FUNC0(path, unlink_cb, 16);
    if (FUNC2(path) != 0) {
        FUNC1("failed rmdir, errno=%d\n", errno);
    }
}
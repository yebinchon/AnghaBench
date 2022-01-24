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
struct mpv_global {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,struct mpv_global*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(struct mpv_global *global, char *subdir)
{
    char *dir = FUNC0(NULL, global, subdir);
    if (dir)
        FUNC1(dir);
    FUNC2(dir);
}
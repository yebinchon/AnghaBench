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
struct gc_arena {int dummy; } ;
typedef  int /*<<< orphan*/  platform_stat_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gc_arena*) ; 
 struct gc_arena FUNC2 () ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct gc_arena*) ; 

int
FUNC5(const char *path, platform_stat_t *buf)
{
#ifdef _WIN32
    struct gc_arena gc = gc_new();
    int res = _wstat(wide_string(path, &gc), buf);
    gc_free(&gc);
    return res;
#else
    return FUNC3(path, buf);
#endif
}
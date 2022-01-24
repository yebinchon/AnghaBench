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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct gc_arena*) ; 
 struct gc_arena FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct gc_arena*) ; 

FILE *
FUNC5(const char *path, const char *mode)
{
#ifdef _WIN32
    struct gc_arena gc = gc_new();
    FILE *f = _wfopen(wide_string(path, &gc), wide_string(mode, &gc));
    gc_free(&gc);
    return f;
#else
    return FUNC1(path, mode);
#endif
}
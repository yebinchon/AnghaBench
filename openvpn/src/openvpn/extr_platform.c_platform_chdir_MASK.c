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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct gc_arena*) ; 
 struct gc_arena FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct gc_arena*) ; 

int
FUNC5(const char *dir)
{
#ifdef HAVE_CHDIR
#ifdef _WIN32
    int res;
    struct gc_arena gc = gc_new();
    res = _wchdir(wide_string(dir, &gc));
    gc_free(&gc);
    return res;
#else  /* ifdef _WIN32 */
    return chdir(dir);
#endif
#else  /* ifdef HAVE_CHDIR */
    return -1;
#endif
}
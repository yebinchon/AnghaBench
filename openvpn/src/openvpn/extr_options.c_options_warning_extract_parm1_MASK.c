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
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPTION_PARM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*,char,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gc_arena*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int,struct gc_arena*) ; 
 struct gc_arena FUNC3 () ; 
 char* FUNC4 (char*,struct gc_arena*) ; 
 struct buffer FUNC5 (char const*,struct gc_arena*) ; 

__attribute__((used)) static const char *
FUNC6(const char *option_string,
                              struct gc_arena *gc_ret)
{
    struct gc_arena gc = FUNC3();
    struct buffer b = FUNC5(option_string, &gc);
    char *p = FUNC2(OPTION_PARM_SIZE, false, &gc);
    const char *ret;

    FUNC0(&b, ' ', p, OPTION_PARM_SIZE);
    ret = FUNC4(p, gc_ret);
    FUNC1(&gc);
    return ret;
}
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
 struct buffer FUNC0 (scalar_t__,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (char const*) ; 

struct buffer
FUNC5(const char *filename, struct gc_arena *gc)
{
    FUNC2(filename);

    const char *pem_str = (const char *) FUNC3();
    struct buffer ret = FUNC0(FUNC4(pem_str) + 1, gc);
    FUNC1(&ret, pem_str, FUNC4(pem_str) + 1);

    return ret;
}
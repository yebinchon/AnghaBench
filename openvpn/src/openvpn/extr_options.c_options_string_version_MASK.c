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
 scalar_t__ FUNC0 (struct buffer*) ; 
 char const* FUNC1 (struct buffer*) ; 
 struct buffer FUNC2 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

const char *
FUNC4(const char *s, struct gc_arena *gc)
{
    struct buffer out = FUNC2(4, gc);
    FUNC3((char *) FUNC0(&out), s, 3);
    return FUNC1(&out);
}
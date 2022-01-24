#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gc_arena {int dummy; } ;
struct TYPE_2__ {scalar_t__ tls_multi; } ;
struct context {TYPE_1__ c2; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

const char *
FUNC4(struct context *c, struct gc_arena *gc)
{
    struct buffer out = FUNC1(256, gc);
    if (c->c2.tls_multi)
    {
        FUNC2(&out, "[%s] ", FUNC3(c->c2.tls_multi, false));
    }
    return FUNC0(&out);
}
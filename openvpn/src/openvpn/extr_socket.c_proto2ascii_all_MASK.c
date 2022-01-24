#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  short_form; } ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 int FUNC1 (TYPE_1__*) ; 
 struct buffer FUNC2 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,char*,...) ; 
 TYPE_1__* proto_names ; 

const char *
FUNC4(struct gc_arena *gc)
{
    struct buffer out = FUNC2(256, gc);
    int i;

    for (i = 0; i < FUNC1(proto_names); ++i)
    {
        if (i)
        {
            FUNC3(&out, " ");
        }
        FUNC3(&out, "[%s]", proto_names[i].short_form);
    }
    return FUNC0(&out);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int b_inuse; scalar_t__ a_end; scalar_t__ data; scalar_t__ b_end; } ;
typedef  TYPE_1__ bipbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int const FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned char const*,int const) ; 

int FUNC3(bipbuf_t* me, const unsigned char *data, const int size)
{
    /* not enough space */
    if (FUNC1(me) < size)
        return 0;

    if (1 == me->b_inuse)
    {
        FUNC2(me->data + me->b_end, data, size);
        me->b_end += size;
    }
    else
    {
        FUNC2(me->data + me->a_end, data, size);
        me->a_end += size;
    }

    FUNC0(me);
    return size;
}
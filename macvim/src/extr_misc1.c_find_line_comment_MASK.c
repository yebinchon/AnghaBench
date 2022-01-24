#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ lnum; int col; } ;
typedef  TYPE_1__ pos_T ;
typedef  scalar_t__ char_u ;
struct TYPE_5__ {TYPE_1__ w_cursor; } ;

/* Variables and functions */
 scalar_t__ NUL ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 TYPE_3__* curwin ; 
 scalar_t__* FUNC1 (scalar_t__) ; 
 scalar_t__* FUNC2 (scalar_t__*) ; 

__attribute__((used)) static pos_T *
FUNC3() /* XXX */
{
    static pos_T pos;
    char_u	 *line;
    char_u	 *p;

    pos = curwin->w_cursor;
    while (--pos.lnum > 0)
    {
	line = FUNC1(pos.lnum);
	p = FUNC2(line);
	if (FUNC0(p))
	{
	    pos.col = (int)(p - line);
	    return &pos;
	}
	if (*p != NUL)
	    break;
    }
    return NULL;
}
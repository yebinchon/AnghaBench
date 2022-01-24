#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* w_ruby_ref; } ;
typedef  TYPE_1__ win_T ;
typedef  scalar_t__ VALUE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  cVimWindow ; 
 int /*<<< orphan*/  objtbl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static VALUE FUNC3(win_T *win)
{
    if (win->w_ruby_ref)
    {
	return (VALUE) win->w_ruby_ref;
    }
    else
    {
	VALUE obj = FUNC0(cVimWindow, 0, 0, win);
	win->w_ruby_ref = (void *) obj;
	FUNC1(objtbl, FUNC2(obj), obj);
	return obj;
    }
}
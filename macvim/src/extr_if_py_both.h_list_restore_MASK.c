#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* li_prev; } ;
typedef  TYPE_1__ listitem_T ;
typedef  int /*<<< orphan*/  list_T ;
typedef  size_t Py_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(Py_ssize_t numadded, Py_ssize_t numreplaced, Py_ssize_t slicelen,
	list_T *l, listitem_T **lis, listitem_T *lastaddedli)
{
    while (numreplaced--)
    {
	FUNC0(l, lis[numreplaced], lis[slicelen + numreplaced]);
	FUNC1(l, lis[slicelen + numreplaced]);
    }
    while (numadded--)
    {
	listitem_T	*next;

	next = lastaddedli->li_prev;
	FUNC1(l, lastaddedli);
	lastaddedli = next;
    }
}
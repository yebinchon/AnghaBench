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
struct TYPE_4__ {scalar_t__ dv_copyID; scalar_t__ dv_refcount; scalar_t__ dv_scope; scalar_t__ dv_lock; int /*<<< orphan*/  dv_hashtab; struct TYPE_4__* dv_used_prev; struct TYPE_4__* dv_used_next; } ;
typedef  TYPE_1__ dict_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* first_dict ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

dict_T *
FUNC2()
{
    dict_T *d;

    d = (dict_T *)FUNC0(sizeof(dict_T));
    if (d != NULL)
    {
	/* Add the dict to the list of dicts for garbage collection. */
	if (first_dict != NULL)
	    first_dict->dv_used_prev = d;
	d->dv_used_next = first_dict;
	d->dv_used_prev = NULL;
	first_dict = d;

	FUNC1(&d->dv_hashtab);
	d->dv_lock = 0;
	d->dv_scope = 0;
	d->dv_refcount = 0;
	d->dv_copyID = 0;
    }
    return d;
}
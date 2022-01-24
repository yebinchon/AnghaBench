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
struct TYPE_3__ {scalar_t__ len; scalar_t__ stop; } ;
typedef  TYPE_1__ StopList ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pg_qsort_strcmp ; 

bool
FUNC1(StopList *s, char *key)
{
	return (s->stop && s->len > 0 &&
			FUNC0(&key, s->stop, s->len,
					sizeof(char *), pg_qsort_strcmp)) ? true : false;
}
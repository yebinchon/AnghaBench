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
struct TYPE_3__ {int /*<<< orphan*/  opt_type; int /*<<< orphan*/  lastoption; } ;
typedef  TYPE_1__ optiterinfo_T ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC2(optiterinfo_T **oii)
{
    char_u	*name;

    if ((name = FUNC1(&((*oii)->lastoption), (*oii)->opt_type)))
	return FUNC0((char *)name);

    return NULL;
}
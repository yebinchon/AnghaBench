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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,double) ; 

__attribute__((used)) static PyObject *
FUNC2(PyObject *a1, int is_forward, double fct)
{
    return is_forward ? FUNC1(a1, fct)
                      : FUNC0(a1, fct);
}
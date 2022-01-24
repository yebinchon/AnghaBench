#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  typfunc; } ;
struct TYPE_6__ {TYPE_1__ scalar; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_3__ PLyDatumToOb ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static PyObject *
FUNC3(PLyDatumToOb *arg, Datum d)
{
	char	   *x = FUNC0(&arg->u.scalar.typfunc, d);
	PyObject   *r = FUNC1(x);

	FUNC2(x);
	return r;
}
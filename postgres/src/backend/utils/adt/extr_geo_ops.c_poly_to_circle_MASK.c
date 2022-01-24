#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* y; void* x; } ;
struct TYPE_9__ {void* radius; TYPE_5__ center; } ;
struct TYPE_8__ {int npts; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ POLYGON ;
typedef  TYPE_2__ CIRCLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*,int) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_5__*) ; 

__attribute__((used)) static void
FUNC5(CIRCLE *result, POLYGON *poly)
{
	int			i;

	FUNC0(poly->npts > 0);

	result->center.x = 0;
	result->center.y = 0;
	result->radius = 0;

	for (i = 0; i < poly->npts; i++)
		FUNC3(&result->center, &result->center, &poly->p[i]);
	result->center.x = FUNC1(result->center.x, poly->npts);
	result->center.y = FUNC1(result->center.y, poly->npts);

	for (i = 0; i < poly->npts; i++)
		result->radius = FUNC2(result->radius,
								   FUNC4(&poly->p[i], &result->center));
	result->radius = FUNC1(result->radius, poly->npts);
}
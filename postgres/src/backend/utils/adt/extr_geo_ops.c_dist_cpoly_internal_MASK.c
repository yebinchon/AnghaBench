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
typedef  double float8 ;
struct TYPE_3__ {int /*<<< orphan*/  radius; int /*<<< orphan*/  center; } ;
typedef  int /*<<< orphan*/  POLYGON ;
typedef  TYPE_1__ CIRCLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static float8
FUNC2(CIRCLE *circle, POLYGON *poly)
{
	float8		result;

	/* calculate distance to center, and subtract radius */
	result = FUNC1(FUNC0(&circle->center, poly),
					   circle->radius);
	if (result < 0.0)
		result = 0.0;

	return result;
}
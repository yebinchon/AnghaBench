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
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 double INFINITY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (double) ; 
 int FUNC3 (int /*<<< orphan*/ *,double) ; 
 double FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5()
{
    json_t *real = FUNC2(INFINITY);
    if (real != NULL)
       FUNC0("could construct a real from Inf");

    real = FUNC2(1.0);
    if (FUNC3(real, INFINITY) != -1)
	    FUNC0("could set a real to Inf");

    if (FUNC4(real) != 1.0)
       FUNC0("real value changed unexpectedly");

    FUNC1(real);
#ifdef _MSC_VER
#pragma warning(pop)
#endif
}
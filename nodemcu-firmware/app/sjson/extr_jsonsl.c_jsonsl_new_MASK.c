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
struct jsonsl_st {int dummy; } ;
typedef  struct jsonsl_st* jsonsl_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct jsonsl_st*,int) ; 

jsonsl_t FUNC3(int nlevels)
{
    struct jsonsl_st *jsn = (struct jsonsl_st *)
            FUNC0(1, FUNC1(nlevels));

    if (jsn) {
      FUNC2(jsn, nlevels);
    }
    return jsn;
}
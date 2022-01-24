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
struct test_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLT_EPSILON ; 
 int /*<<< orphan*/  FUNC0 (float,float,int /*<<< orphan*/ ) ; 
 float FUNC1 (double,double,double,double,double) ; 

__attribute__((used)) static void FUNC2(struct test_ctx *ctx)
{
    float x;

    x = FUNC1(16.0, 64.0, 2.40, 1.961, 16.0);
    FUNC0(x, 2.40f, FLT_EPSILON);

    x = FUNC1(16.0, 64.0, 2.40, 1.961, 64.0);
    FUNC0(x, 1.961f, FLT_EPSILON);

    x = FUNC1(16.0, 64.0, 1.961, 2.40, 64.0);
    FUNC0(x, 2.40f, FLT_EPSILON);

    x = FUNC1(16.0, 64.0, 2.40, 1.961, 0.0);
    FUNC0(x, 2.40f, FLT_EPSILON);

    // 32 corresponds to the the midpoint after converting lux to the log10 scale
    x = FUNC1(16.0, 64.0, 2.40, 1.961, 32.0);
    float mid_gamma = (2.40 - 1.961) / 2 + 1.961;
    FUNC0(x, mid_gamma, FLT_EPSILON);
}
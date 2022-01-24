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
typedef  int /*<<< orphan*/  float8 ;
struct TYPE_3__ {int /*<<< orphan*/  radius; } ;
typedef  TYPE_1__ CIRCLE ;

/* Variables and functions */
 int /*<<< orphan*/  M_PI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static float8
FUNC1(CIRCLE *circle)
{
	return FUNC0(FUNC0(circle->radius, circle->radius), M_PI);
}
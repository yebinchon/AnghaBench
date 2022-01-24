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
typedef  int /*<<< orphan*/  smart_str ;
typedef  TYPE_1__* sdlRestrictionCharPtr ;
struct TYPE_3__ {int fixed; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(sdlRestrictionCharPtr x, smart_str *out)
{
	if (x) {
		FUNC0(1, out);
		FUNC1(x->value, out);
		FUNC0(x->fixed, out);
	} else {
		FUNC0(0, out);
	}
}
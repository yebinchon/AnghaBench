#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int /*<<< orphan*/ * left; } ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char const* FUNC7 (char*,char const*) ; 

const char *FUNC8(jsstr_t *str)
{
    return FUNC5(str) ? FUNC0(FUNC2(str)->buf, FUNC6(str))
        : FUNC4(str) ? FUNC0(FUNC1(str)->buf, FUNC6(str))
        : FUNC7("%s...", FUNC8(FUNC3(str)->left));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_4__ {int /*<<< orphan*/  str; int /*<<< orphan*/  last_index_val; scalar_t__ jsregexp; } ;
typedef  TYPE_1__ RegExpInstance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(jsdisp_t *dispex)
{
    RegExpInstance *This = FUNC4(dispex);

    if(This->jsregexp)
        FUNC3(This->jsregexp);
    FUNC2(This->last_index_val);
    FUNC1(This->str);
    FUNC0(This);
}
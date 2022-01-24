#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_10__ {unsigned int argc; TYPE_2__* function; struct TYPE_10__* buf; } ;
struct TYPE_8__ {int /*<<< orphan*/  dispex; } ;
struct TYPE_9__ {TYPE_1__ function; } ;
typedef  TYPE_3__ ArgumentsInstance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__) ; 

__attribute__((used)) static void FUNC5(jsdisp_t *jsdisp)
{
    ArgumentsInstance *arguments = FUNC1(jsdisp);

    FUNC0("(%p)\n", arguments);

    if(arguments->buf) {
        unsigned i;
        for(i = 0; i < arguments->argc; i++)
            FUNC4(arguments->buf[i]);
        FUNC2(arguments->buf);
    }

    FUNC3(&arguments->function->function.dispex);
    FUNC2(arguments);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ log; scalar_t__ length; } ;
struct TYPE_8__ {scalar_t__ url; TYPE_1__ travellog; int /*<<< orphan*/  cps; scalar_t__ shell_ui_helper; } ;
typedef  TYPE_2__ DocHost ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7(DocHost *This)
{
    if(This->shell_ui_helper)
        FUNC2(This->shell_ui_helper);

    FUNC3(This, NULL);
    FUNC6(This);
    FUNC1(This);

    FUNC0(&This->cps);

    while(This->travellog.length)
        FUNC4(This->travellog.log + --This->travellog.length);
    FUNC5(This->travellog.log);

    FUNC5(This->url);
}
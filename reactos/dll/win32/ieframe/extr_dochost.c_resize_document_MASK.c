#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ view; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LONG ;
typedef  TYPE_2__ DocHost ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC2(DocHost *This, LONG width, LONG height)
{
    RECT rect = {0, 0, width, height};

    FUNC1("(%p)->(%d %d)\n", This, width, height);

    if(This->view)
        FUNC0(This->view, &rect);

    return 0;
}
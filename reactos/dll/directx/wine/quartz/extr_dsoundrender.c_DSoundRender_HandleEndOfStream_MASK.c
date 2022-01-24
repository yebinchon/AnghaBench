#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/  csFilter; } ;
struct TYPE_7__ {TYPE_1__ filter; int /*<<< orphan*/  csRenderLock; } ;
struct TYPE_8__ {int in_loop; TYPE_2__ renderer; int /*<<< orphan*/  blocked; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_3__ DSoundRenderImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ State_Running ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC4(DSoundRenderImpl *This)
{
    while (This->renderer.filter.state == State_Running)
    {
        DWORD pos1, pos2;
        FUNC0(This, &pos1, &pos2);
        if (pos1 == pos2)
            break;

        This->in_loop = 1;
        FUNC2(&This->renderer.filter.csFilter);
        FUNC2(&This->renderer.csRenderLock);
        FUNC3(This->blocked, 10);
        FUNC1(&This->renderer.csRenderLock);
        FUNC1(&This->renderer.filter.csFilter);
        This->in_loop = 0;
    }

    return S_OK;
}
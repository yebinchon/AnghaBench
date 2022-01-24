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
typedef  scalar_t__ ULONG ;
struct TYPE_4__ {scalar_t__ device; int /*<<< orphan*/  ref; } ;
typedef  scalar_t__ LPDIRECTSOUND8 ;
typedef  TYPE_1__ IDirectSoundImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,...) ; 

__attribute__((used)) static ULONG FUNC5(
    LPDIRECTSOUND8 iface)
{
    IDirectSoundImpl *This = (IDirectSoundImpl *)iface;
    ULONG ref = FUNC3(&(This->ref));
    FUNC4("(%p) ref was %d\n", This, ref + 1);

    if (!ref) {
        if (This->device)
            FUNC0(This->device);
        FUNC2(FUNC1(),0,This);
        FUNC4("(%p) released\n", This);
    }
    return ref;
}
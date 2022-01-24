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
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  ref; } ;
typedef  scalar_t__ LPDIRECTSOUND8 ;
typedef  TYPE_1__ IDirectSoundImpl ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static ULONG FUNC2(
    LPDIRECTSOUND8 iface)
{
    IDirectSoundImpl *This = (IDirectSoundImpl *)iface;
    ULONG ref = FUNC0(&(This->ref));
    FUNC1("(%p) ref was %d\n", This, ref - 1);
    return ref;
}
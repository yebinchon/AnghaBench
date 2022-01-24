#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nrofnotifies; TYPE_1__* notifies; } ;
struct TYPE_4__ {scalar_t__ dwOffset; int /*<<< orphan*/  hEventNotify; } ;
typedef  TYPE_1__* LPDSBPOSITIONNOTIFY ;
typedef  TYPE_2__ IDirectSoundCaptureBufferImpl ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ DSBPN_OFFSETSTOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 

__attribute__((used)) static void FUNC2(IDirectSoundCaptureBufferImpl *This, DWORD from, DWORD len)
{
    int i;
    for (i = 0; i < This->nrofnotifies; ++i) {
        LPDSBPOSITIONNOTIFY event = This->notifies + i;
        DWORD offset = event->dwOffset;
        FUNC1("checking %d, position %d, event = %p\n", i, offset, event->hEventNotify);

        if (offset == DSBPN_OFFSETSTOP) {
            if (!from && !len) {
                FUNC0(event->hEventNotify);
                FUNC1("signalled event %p (%d)\n", event->hEventNotify, i);
                return;
            }
            else return;
        }

        if (offset >= from && offset < (from + len))
        {
            FUNC1("signalled event %p (%d)\n", event->hEventNotify, i);
            FUNC0(event->hEventNotify);
        }
    }
}
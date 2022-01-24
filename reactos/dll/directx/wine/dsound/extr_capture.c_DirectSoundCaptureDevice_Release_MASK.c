#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_10__ {TYPE_1__* DebugInfo; } ;
struct TYPE_8__ {size_t dnDevNode; } ;
struct TYPE_9__ {TYPE_2__ drvdesc; TYPE_6__ lock; struct TYPE_9__* pwfx; scalar_t__ driver; scalar_t__ capture_buffer; int /*<<< orphan*/  ref; } ;
struct TYPE_7__ {scalar_t__* Spare; } ;
typedef  int /*<<< orphan*/  LPDIRECTSOUNDCAPTUREBUFFER8 ;
typedef  TYPE_3__ DirectSoundCaptureDevice ;

/* Variables and functions */
 int /*<<< orphan*/ ** DSOUND_capture ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static ULONG FUNC8(
    DirectSoundCaptureDevice * device)
{
    ULONG ref = FUNC6(&(device->ref));
    FUNC7("(%p) ref was %d\n", device, ref + 1);

    if (!ref) {
        FUNC7("deleting object\n");
        if (device->capture_buffer)
            FUNC3(
		(LPDIRECTSOUNDCAPTUREBUFFER8) device->capture_buffer);

        if (device->driver) {
            FUNC4(device->driver);
            FUNC5(device->driver);
        }

        FUNC2(FUNC1(), 0, device->pwfx);
        device->lock.DebugInfo->Spare[0] = 0;
        FUNC0( &(device->lock) );
        DSOUND_capture[device->drvdesc.dnDevNode] = NULL;
        FUNC2(FUNC1(), 0, device);
	FUNC7("(%p) released\n", device);
    }
    return ref;
}
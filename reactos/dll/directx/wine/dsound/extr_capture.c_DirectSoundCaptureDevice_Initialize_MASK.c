#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wic ;
struct TYPE_8__ {int /*<<< orphan*/  wChannels; int /*<<< orphan*/  dwFormats; int /*<<< orphan*/  szPname; } ;
typedef  TYPE_1__ WAVEINCAPSA ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_11__ {int dwSize; int /*<<< orphan*/  dwChannels; int /*<<< orphan*/  dwFormats; int /*<<< orphan*/  dwFlags; } ;
struct TYPE_10__ {int dwFlags; unsigned int dnDevNode; int /*<<< orphan*/  szDrvname; } ;
struct TYPE_9__ {TYPE_5__ drvcaps; TYPE_4__ drvdesc; int /*<<< orphan*/ * driver; int /*<<< orphan*/  guid; } ;
typedef  int /*<<< orphan*/ * LPCGUID ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  TYPE_2__ DirectSoundCaptureDevice ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_QUERYDSOUNDIFACE ; 
 int /*<<< orphan*/  DSCCAPS_EMULDRIVER ; 
 int DSDDESC_DOMMSYSTEMOPEN ; 
 int DSDDESC_DOMMSYSTEMSETFORMAT ; 
 int /*<<< orphan*/  DSDEVID_DefaultCapture ; 
 scalar_t__ DSERR_ALLOCATED ; 
 scalar_t__ DSERR_INVALIDPARAM ; 
 scalar_t__ DSERR_NODRIVER ; 
 scalar_t__ DSERR_UNSUPPORTED ; 
 scalar_t__* DSOUND_capture ; 
 int /*<<< orphan*/ * DSOUND_capture_guids ; 
 scalar_t__ DS_HW_ACCEL_EMULATION ; 
 scalar_t__ DS_OK ; 
 scalar_t__ FUNC0 (TYPE_2__**) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GUID_NULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ ds_hw_accel ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 unsigned int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC15(
    DirectSoundCaptureDevice ** ppDevice,
    LPCGUID lpcGUID)
{
    HRESULT err = DSERR_INVALIDPARAM;
    unsigned wid, widn;
    BOOLEAN found = FALSE;
    GUID devGUID;
    DirectSoundCaptureDevice *device = *ppDevice;
    FUNC6("(%p, %s)\n", ppDevice, FUNC9(lpcGUID));

    /* Default device? */
    if ( !lpcGUID || FUNC5(lpcGUID, &GUID_NULL) )
	lpcGUID = &DSDEVID_DefaultCapture;

    if (FUNC1(lpcGUID, &devGUID) != DS_OK) {
        FUNC8("invalid parameter: lpcGUID\n");
        return DSERR_INVALIDPARAM;
    }

    widn = FUNC13();
    if (!widn) {
	FUNC8("no audio devices found\n");
	return DSERR_NODRIVER;
    }

    /* enumerate WINMM audio devices and find the one we want */
    for (wid=0; wid<widn; wid++) {
	if (FUNC5( &devGUID, &DSOUND_capture_guids[wid]) ) {
	    found = TRUE;
	    break;
	}
    }

    if (found == FALSE) {
	FUNC8("No device found matching given ID!\n");
	return DSERR_NODRIVER;
    }

    if (DSOUND_capture[wid]) {
        FUNC8("already in use\n");
        return DSERR_ALLOCATED;
    }

    err = FUNC0(&(device));
    if (err != DS_OK) {
        FUNC8("DirectSoundCaptureDevice_Create failed\n");
        return err;
    }

    *ppDevice = device;
    device->guid = devGUID;

    /* Disable the direct sound driver to force emulation if requested. */
    device->driver = NULL;
    if (ds_hw_accel != DS_HW_ACCEL_EMULATION)
    {
        err = FUNC11(FUNC14(FUNC7(wid),DRV_QUERYDSOUNDIFACE,(DWORD_PTR)&device->driver,0));
        if ( (err != DS_OK) && (err != DSERR_UNSUPPORTED) ) {
            FUNC8("waveInMessage failed; err=%x\n",err);
            return err;
        }
    }
    err = DS_OK;

    /* Get driver description */
    if (device->driver) {
        FUNC6("using DirectSound driver\n");
        err = FUNC3(device->driver, &(device->drvdesc));
	if (err != DS_OK) {
	    FUNC8("IDsCaptureDriver_GetDriverDesc failed\n");
	    return err;
	}
    } else {
        FUNC6("using WINMM\n");
        /* if no DirectSound interface available, use WINMM API instead */
        device->drvdesc.dwFlags = DSDDESC_DOMMSYSTEMOPEN |
            DSDDESC_DOMMSYSTEMSETFORMAT;
    }

    device->drvdesc.dnDevNode = wid;

    /* open the DirectSound driver if available */
    if (device->driver && (err == DS_OK))
        err = FUNC4(device->driver);

    if (err == DS_OK) {
        *ppDevice = device;

        /* the driver is now open, so it's now allowed to call GetCaps */
        if (device->driver) {
	    device->drvcaps.dwSize = sizeof(device->drvcaps);
            err = FUNC2(device->driver,&(device->drvcaps));
	    if (err != DS_OK) {
		FUNC8("IDsCaptureDriver_GetCaps failed\n");
		return err;
	    }
        } else /*if (device->hwi)*/ {
            WAVEINCAPSA    wic;
            err = FUNC11(FUNC12((UINT)device->drvdesc.dnDevNode, &wic, sizeof(wic)));

            if (err == DS_OK) {
                device->drvcaps.dwFlags = 0;
                FUNC10(device->drvdesc.szDrvname, wic.szPname,
                          sizeof(device->drvdesc.szDrvname));

                device->drvcaps.dwFlags |= DSCCAPS_EMULDRIVER;
                device->drvcaps.dwFormats = wic.dwFormats;
                device->drvcaps.dwChannels = wic.wChannels;
            }
        }
    }

    return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dwFlags; int dnDevNode; } ;
struct TYPE_5__ {int /*<<< orphan*/ * driver; int /*<<< orphan*/  pwfx; TYPE_3__ drvdesc; scalar_t__ hwo; int /*<<< orphan*/ * buffer; } ;
typedef  int /*<<< orphan*/  HWAVEOUT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DirectSoundDevice ;
typedef  scalar_t__ DWORD_PTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CALLBACK_FUNCTION ; 
 int /*<<< orphan*/  DRV_QUERYDSOUNDIFACE ; 
 int DSDDESC_DOMMSYSTEMOPEN ; 
 int DSDDESC_DOMMSYSTEMSETFORMAT ; 
 scalar_t__ DSOUND_callback ; 
 scalar_t__ DS_HW_ACCEL_EMULATION ; 
 int /*<<< orphan*/  DS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int WAVE_DIRECTSOUND ; 
 int WAVE_MAPPED ; 
 scalar_t__ ds_hw_accel ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 

HRESULT FUNC11(DirectSoundDevice *device, BOOL forcewave)
{
	HRESULT hres = DS_OK;
	FUNC5("(%p, %d)\n", device, forcewave);

	if (device->driver)
	{
		FUNC1(device->driver);
		if (device->drvdesc.dwFlags & DSDDESC_DOMMSYSTEMOPEN)
			FUNC8(device->hwo);
		FUNC4(device->driver);
		device->driver = NULL;
		device->buffer = NULL;
		device->hwo = 0;
	}
	else if (device->drvdesc.dwFlags & DSDDESC_DOMMSYSTEMOPEN)
		FUNC8(device->hwo);

	/* DRV_QUERYDSOUNDIFACE is a "Wine extension" to get the DSound interface */
	if (ds_hw_accel != DS_HW_ACCEL_EMULATION && !forcewave)
		FUNC9((HWAVEOUT)(DWORD_PTR)device->drvdesc.dnDevNode, DRV_QUERYDSOUNDIFACE, (DWORD_PTR)&device->driver, 0);

	/* Get driver description */
	if (device->driver) {
		DWORD wod = device->drvdesc.dnDevNode;
		hres = FUNC2(device->driver,&(device->drvdesc));
		device->drvdesc.dnDevNode = wod;
		if (FUNC0(hres)) {
			FUNC6("IDsDriver_GetDriverDesc failed: %08x\n", hres);
			FUNC4(device->driver);
			device->driver = NULL;
		}
        }

        /* if no DirectSound interface available, use WINMM API instead */
	if (!device->driver)
		device->drvdesc.dwFlags = DSDDESC_DOMMSYSTEMOPEN | DSDDESC_DOMMSYSTEMSETFORMAT;

	if (device->drvdesc.dwFlags & DSDDESC_DOMMSYSTEMOPEN)
	{
		DWORD flags = CALLBACK_FUNCTION | WAVE_MAPPED;

		if (device->driver)
			flags |= WAVE_DIRECTSOUND;

		hres = FUNC7(FUNC10(&(device->hwo), device->drvdesc.dnDevNode, device->pwfx, (DWORD_PTR)DSOUND_callback, (DWORD_PTR)device, flags));
		if (FUNC0(hres)) {
			FUNC6("waveOutOpen failed\n");
			if (device->driver)
			{
				FUNC4(device->driver);
				device->driver = NULL;
			}
			return hres;
		}
	}

	if (device->driver)
		hres = FUNC3(device->driver);

	return hres;
}
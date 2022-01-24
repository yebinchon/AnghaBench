#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WAVEFORMATEX ;
struct TYPE_23__ {int dwFlags; } ;
struct TYPE_26__ {scalar_t__ priolevel; scalar_t__ state; int nrofbuffers; int /*<<< orphan*/  buffer_list_lock; int /*<<< orphan*/  mixlock; TYPE_2__* pwfx; TYPE_4__** buffers; int /*<<< orphan*/  normfunction; int /*<<< orphan*/  mixfunction; int /*<<< orphan*/  mix_buffer_len; int /*<<< orphan*/  mix_buffer; int /*<<< orphan*/  buflen; scalar_t__ buffer; scalar_t__ mixpos; scalar_t__ playpos; scalar_t__ pwqueue; scalar_t__ pwplay; scalar_t__ hwbuf; TYPE_1__ drvdesc; } ;
struct TYPE_25__ {int freqAdjust; int /*<<< orphan*/  lock; scalar_t__ primary_mixpos; int /*<<< orphan*/  buflen; scalar_t__ freq; } ;
struct TYPE_24__ {scalar_t__ nChannels; int nSamplesPerSec; scalar_t__ wBitsPerSample; int cbSize; int /*<<< orphan*/  wFormatTag; int /*<<< orphan*/  nBlockAlign; int /*<<< orphan*/  nAvgBytesPerSec; } ;
typedef  int /*<<< orphan*/  PCMWAVEFORMAT ;
typedef  TYPE_2__* LPWAVEFORMATEX ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  TYPE_2__* LPCWAVEFORMATEX ;
typedef  TYPE_4__ IDirectSoundBufferImpl ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_5__ DirectSoundDevice ;
typedef  int DWORD64 ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  DSBLOCK_ENTIREBUFFER ; 
 int DSDDESC_DOMMSYSTEMSETFORMAT ; 
 scalar_t__ DSERR_BADFORMAT ; 
 scalar_t__ DSERR_BUFFERLOST ; 
 scalar_t__ DSERR_INVALIDPARAM ; 
 scalar_t__ DSERR_OUTOFMEMORY ; 
 scalar_t__ DSERR_PRIOLEVELNEEDED ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int DSOUND_FREQSHIFT ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 scalar_t__ FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ DSSCL_NORMAL ; 
 scalar_t__ DSSCL_WRITEPRIMARY ; 
 scalar_t__ DS_OK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ STATE_PLAYING ; 
 scalar_t__ STATE_STARTING ; 
 scalar_t__ STATE_STOPPED ; 
 scalar_t__ STATE_STOPPING ; 
 scalar_t__ S_FALSE ; 
 int /*<<< orphan*/  FUNC22 (char*,TYPE_5__*,scalar_t__,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 
 int /*<<< orphan*/  WAVE_FORMAT_PCM ; 
 int /*<<< orphan*/ * mixfunctions ; 
 int /*<<< orphan*/ * normfunctions ; 

HRESULT FUNC24(DirectSoundDevice *device, LPCWAVEFORMATEX wfex)
{
	HRESULT err = DSERR_BUFFERLOST;
	int i;
	DWORD nSamplesPerSec, bpp, chans;
	LPWAVEFORMATEX oldpwfx;
        BOOL forced = device->priolevel == DSSCL_WRITEPRIMARY;

	FUNC22("(%p,%p)\n", device, wfex);

	if (device->priolevel == DSSCL_NORMAL) {
		FUNC23("failed priority check!\n");
		return DSERR_PRIOLEVELNEEDED;
	}

	/* Let's be pedantic! */
	if (wfex == NULL) {
		FUNC23("invalid parameter: wfex==NULL!\n");
		return DSERR_INVALIDPARAM;
	}
	FUNC22("(formattag=0x%04x,chans=%d,samplerate=%d,"
              "bytespersec=%d,blockalign=%d,bitspersamp=%d,cbSize=%d)\n",
	      wfex->wFormatTag, wfex->nChannels, wfex->nSamplesPerSec,
	      wfex->nAvgBytesPerSec, wfex->nBlockAlign,
	      wfex->wBitsPerSample, wfex->cbSize);

	/* **** */
	FUNC20(&(device->buffer_list_lock), TRUE);
	FUNC10(&(device->mixlock));

	nSamplesPerSec = device->pwfx->nSamplesPerSec;
	bpp = device->pwfx->wBitsPerSample;
	chans = device->pwfx->nChannels;

	oldpwfx = device->pwfx;
	device->pwfx = FUNC1(wfex);
	if (device->pwfx == NULL) {
		device->pwfx = oldpwfx;
		oldpwfx = NULL;
		err = DSERR_OUTOFMEMORY;
		goto done;
	}

	if (!(device->drvdesc.dwFlags & DSDDESC_DOMMSYSTEMSETFORMAT) && device->hwbuf) {
		err = FUNC17(device->hwbuf, device->pwfx);

		/* On bad format, try to re-create, big chance it will work then, only do this if we <HAVE> to */
		if (forced && (device->pwfx->nSamplesPerSec/100 != wfex->nSamplesPerSec/100 || err == DSERR_BADFORMAT))
		{
			DWORD cp_size = wfex->wFormatTag == WAVE_FORMAT_PCM ?
				sizeof(PCMWAVEFORMAT) : sizeof(WAVEFORMATEX) + wfex->cbSize;
			err = DSERR_BUFFERLOST;
			FUNC0(device->pwfx, wfex, cp_size);
		}

		if (err != DSERR_BUFFERLOST && FUNC11(err)) {
			DWORD size = FUNC2(oldpwfx);
			FUNC23("IDsDriverBuffer_SetFormat failed\n");
			if (!forced) {
				FUNC0(device->pwfx, oldpwfx, size);
				err = DS_OK;
			}
			goto done;
		}

		if (err == S_FALSE)
		{
			/* ALSA specific: S_FALSE tells that recreation was successful,
			 * but size and location may be changed, and buffer has to be restarted
			 * I put it here, so if frequency doesn't match the error will be changed to DSERR_BUFFERLOST
			 * and the entire re-initialization will occur anyway
			 */
			FUNC16(device->hwbuf, (LPVOID *)&device->buffer, &device->buflen, NULL, NULL, 0, 0, DSBLOCK_ENTIREBUFFER);
			FUNC18(device->hwbuf, device->buffer, 0, NULL, 0);

			if (device->state == STATE_PLAYING) device->state = STATE_STARTING;
			else if (device->state == STATE_STOPPING) device->state = STATE_STOPPED;
			device->pwplay = device->pwqueue = device->playpos = device->mixpos = 0;
			err = DS_OK;
		}
		FUNC7(device);
	}

	if (err == DSERR_BUFFERLOST)
	{
		FUNC4(device);

		err = FUNC8(device, FALSE);
		if (FUNC11(err))
		{
			FUNC23("DSOUND_ReopenDevice failed: %08x\n", err);
			goto done;
		}
		err = FUNC5(device);
		if (err != DS_OK) {
			FUNC23("DSOUND_PrimaryOpen failed\n");
			goto done;
		}

		if (wfex->nSamplesPerSec/100 != device->pwfx->nSamplesPerSec/100 && forced && device->buffer)
		{
			FUNC4(device);
			device->pwfx->nSamplesPerSec = wfex->nSamplesPerSec;
			err = FUNC8(device, TRUE);
			if (FUNC11(err))
				FUNC23("DSOUND_ReopenDevice(2) failed: %08x\n", err);
			else if (FUNC11((err = FUNC5(device))))
				FUNC23("DSOUND_PrimaryOpen(2) failed: %08x\n", err);
		}
	}

	device->mix_buffer_len = FUNC9(device, device->buflen);
	device->mix_buffer = FUNC15(FUNC13(), 0, device->mix_buffer, device->mix_buffer_len);
	FUNC12(device->mix_buffer, device->mix_buffer_len, 0);
	device->mixfunction = mixfunctions[device->pwfx->wBitsPerSample/8 - 1];
	device->normfunction = normfunctions[device->pwfx->wBitsPerSample/8 - 1];

	if (nSamplesPerSec != device->pwfx->nSamplesPerSec || bpp != device->pwfx->wBitsPerSample || chans != device->pwfx->nChannels) {
		IDirectSoundBufferImpl** dsb = device->buffers;
		for (i = 0; i < device->nrofbuffers; i++, dsb++) {
			/* **** */
			FUNC20(&(*dsb)->lock, TRUE);

			(*dsb)->freqAdjust = ((DWORD64)(*dsb)->freq << DSOUND_FREQSHIFT) / device->pwfx->nSamplesPerSec;
			FUNC6((*dsb));
			FUNC3((*dsb), 0, (*dsb)->buflen, FALSE);
			(*dsb)->primary_mixpos = 0;

			FUNC21(&(*dsb)->lock);
			/* **** */
		}
	}

done:
	FUNC19(&(device->mixlock));
	FUNC21(&(device->buffer_list_lock));
	/* **** */

	FUNC14(FUNC13(), 0, oldpwfx);
	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ buflen; scalar_t__ mix_buffer; int /*<<< orphan*/  (* mixfunction ) (int /*<<< orphan*/ *,scalar_t__,int) ;int /*<<< orphan*/ * tmp_buffer; TYPE_2__* pwfx; } ;
struct TYPE_14__ {int dwFlags; } ;
struct TYPE_15__ {int buf_mixpos; scalar_t__ tmp_buffer_len; scalar_t__ sec_mixpos; int playflags; scalar_t__ state; scalar_t__ primary_mixpos; TYPE_6__* device; TYPE_3__ dsbd; int /*<<< orphan*/  buflen; scalar_t__ resampleinmixer; TYPE_1__* buffer; int /*<<< orphan*/ * tmp_buffer; } ;
struct TYPE_13__ {int nBlockAlign; } ;
struct TYPE_12__ {int /*<<< orphan*/ * memory; } ;
typedef  int INT ;
typedef  TYPE_4__ IDirectSoundBufferImpl ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int DSBCAPS_CTRLPOSITIONNOTIFY ; 
 int DSBPLAY_LOOPING ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_6__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 scalar_t__ STATE_STARTING ; 
 scalar_t__ STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static DWORD FUNC13(IDirectSoundBufferImpl *dsb, DWORD writepos, DWORD fraglen)
{
	INT len = fraglen, ilen;
	BYTE *ibuf = (dsb->tmp_buffer ? dsb->tmp_buffer : dsb->buffer->memory) + dsb->buf_mixpos, *volbuf;
	DWORD oldpos, mixbufpos;

	FUNC8("buf_mixpos=%d/%d sec_mixpos=%d/%d\n", dsb->buf_mixpos, dsb->tmp_buffer_len, dsb->sec_mixpos, dsb->buflen);
	FUNC8("(%p,%d,%d)\n",dsb,writepos,fraglen);

	FUNC9(dsb->buf_mixpos + len <= dsb->tmp_buffer_len);

	if (len % dsb->device->pwfx->nBlockAlign) {
		INT nBlockAlign = dsb->device->pwfx->nBlockAlign;
		FUNC7("length not a multiple of block size, len = %d, block size = %d\n", len, nBlockAlign);
		len -= len % nBlockAlign; /* data alignment */
	}

	/* Resample buffer to temporary buffer specifically allocated for this purpose, if needed */
	FUNC2(dsb, dsb->sec_mixpos, FUNC6(dsb, dsb->buf_mixpos+len) - dsb->sec_mixpos, TRUE);
	if (dsb->resampleinmixer)
		ibuf = dsb->device->tmp_buffer;

	/* Apply volume if needed */
	volbuf = FUNC3(dsb, len);
	if (volbuf)
		ibuf = volbuf;

	mixbufpos = FUNC5(dsb->device, writepos);
	/* Now mix the temporary buffer into the devices main buffer */
	if ((writepos + len) <= dsb->device->buflen)
		dsb->device->mixfunction(ibuf, dsb->device->mix_buffer + mixbufpos, len);
	else
	{
		DWORD todo = dsb->device->buflen - writepos;
		dsb->device->mixfunction(ibuf, dsb->device->mix_buffer + mixbufpos, todo);
		dsb->device->mixfunction(ibuf + todo, dsb->device->mix_buffer, len - todo);
	}

	oldpos = dsb->sec_mixpos;
	dsb->buf_mixpos += len;

	if (dsb->buf_mixpos >= dsb->tmp_buffer_len) {
		if (dsb->buf_mixpos > dsb->tmp_buffer_len)
			FUNC7("Mixpos (%u) past buflen (%u), capping...\n", dsb->buf_mixpos, dsb->tmp_buffer_len);
		if (dsb->playflags & DSBPLAY_LOOPING) {
			dsb->buf_mixpos -= dsb->tmp_buffer_len;
		} else if (dsb->buf_mixpos >= dsb->tmp_buffer_len) {
			dsb->buf_mixpos = dsb->sec_mixpos = 0;
			dsb->state = STATE_STOPPED;
		}
		FUNC4(dsb);
	}

	dsb->sec_mixpos = FUNC6(dsb, dsb->buf_mixpos);
	ilen = FUNC0(dsb->buflen, dsb->sec_mixpos, oldpos);
	/* check for notification positions */
	if (dsb->dsbd.dwFlags & DSBCAPS_CTRLPOSITIONNOTIFY &&
	    dsb->state != STATE_STARTING) {
		FUNC1(dsb, oldpos, ilen);
	}

	/* increase mix position */
	dsb->primary_mixpos += len;
	if (dsb->primary_mixpos >= dsb->device->buflen)
		dsb->primary_mixpos -= dsb->device->buflen;
	return len;
}
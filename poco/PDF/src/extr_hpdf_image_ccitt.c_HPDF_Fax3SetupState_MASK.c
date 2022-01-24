#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct _HPDF_CCITT_Data {int dummy; } ;
struct TYPE_6__ {int rowbytes; int rowpixels; } ;
struct TYPE_5__ {int* runs; int* curruns; int* refruns; unsigned char* refline; } ;
typedef  int HPDF_UINT ;
typedef  TYPE_1__ HPDF_Fax3CodecState ;
typedef  TYPE_2__ HPDF_Fax3BaseState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct _HPDF_CCITT_Data*) ; 
 TYPE_2__* FUNC1 (struct _HPDF_CCITT_Data*) ; 
 int HPDF_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct _HPDF_CCITT_Data *pData, HPDF_UINT          width,
							HPDF_UINT          height,
							HPDF_UINT          line_width)
{
	HPDF_Fax3BaseState* sp = FUNC1(pData);
	HPDF_Fax3CodecState* esp = FUNC0(pData);
	uint32 rowbytes, rowpixels, nruns;

	FUNC2 (height);

	rowbytes = line_width;
	rowpixels = width;

	sp->rowbytes = (uint32) rowbytes;
	sp->rowpixels = (uint32) rowpixels;

	nruns = 2*FUNC3(rowpixels,32);
	nruns += 3;
	esp->runs = (uint32*) FUNC4(2*nruns * sizeof (uint32));
	if (esp->runs == NULL)
		return 1;
	esp->curruns = esp->runs;
	esp->refruns = esp->runs + nruns;

	/*
	 * 2d encoding requires a scanline
	 * buffer for the ``reference line''; the
	 * scanline against which delta encoding
	 * is referenced.  The reference line must
	 * be initialized to be ``white'' (done elsewhere).
	 */
	esp->refline = (unsigned char*) FUNC4(rowbytes);
	if (esp->refline == NULL) {
		return 1;
	}

	return HPDF_OK;
}
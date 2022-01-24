#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tjhandle ;
struct TYPE_17__ {int image_width; int image_height; int output_width; int output_height; int output_scanline; scalar_t__ global_state; int /*<<< orphan*/  scale_denom; int /*<<< orphan*/  scale_num; void* do_fancy_upsampling; } ;
struct TYPE_16__ {int /*<<< orphan*/  denom; int /*<<< orphan*/  num; } ;
struct TYPE_14__ {void* stopOnWarning; scalar_t__ warning; int /*<<< orphan*/  setjmp_buffer; } ;
struct TYPE_13__ {int /*<<< orphan*/  dct_method; int /*<<< orphan*/  out_color_space; } ;
struct TYPE_15__ {int init; TYPE_2__ jerr; TYPE_1__ dinfo; } ;
typedef  unsigned char* JSAMPROW ;

/* Variables and functions */
 int DECOMPRESS ; 
 scalar_t__ DSTATE_START ; 
 void* FALSE ; 
 int /*<<< orphan*/  JDCT_FASTEST ; 
 int NUMSF ; 
 int TJFLAG_BOTTOMUP ; 
 int TJFLAG_FASTDCT ; 
 int TJFLAG_FASTUPSAMPLE ; 
 int TJFLAG_FORCEMMX ; 
 int TJFLAG_FORCESSE ; 
 int TJFLAG_FORCESSE2 ; 
 int TJFLAG_STOPONWARNING ; 
 int FUNC0 (int,TYPE_4__) ; 
 int TJ_NUMPF ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_5__* dinfo ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,unsigned char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,unsigned char**,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/ * pf2cs ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_4__* sf ; 
 TYPE_3__* this ; 
 int* tjPixelSize ; 

int FUNC13(tjhandle handle, const unsigned char *jpegBuf,
                            unsigned long jpegSize, unsigned char *dstBuf,
                            int width, int pitch, int height, int pixelFormat,
                            int flags)
{
  JSAMPROW *row_pointer = NULL;
  int i, retval = 0, jpegwidth, jpegheight, scaledw, scaledh;

	FUNC3(handle);
  this->jerr.stopOnWarning = (flags & TJFLAG_STOPONWARNING) ? TRUE : FALSE;
	if((this->init&DECOMPRESS)==0)
		FUNC1("tjDecompress2(): Instance has not been initialized for decompression");

  if (jpegBuf == NULL || jpegSize <= 0 || dstBuf == NULL || width < 0 ||
      pitch < 0 || height < 0 || pixelFormat < 0 || pixelFormat >= TJ_NUMPF)
		FUNC1("tjDecompress2(): Invalid argument");

#ifndef NO_PUTENV
	if(flags&TJFLAG_FORCEMMX) FUNC11("JSIMD_FORCEMMX=1");
	else if(flags&TJFLAG_FORCESSE) FUNC11("JSIMD_FORCESSE=1");
	else if(flags&TJFLAG_FORCESSE2) FUNC11("JSIMD_FORCESSE2=1");
#endif

  if (FUNC12(this->jerr.setjmp_buffer)) {
		/* If we get here, the JPEG code has signaled an error. */
		retval=-1;  goto bailout;
	}

	FUNC6(dinfo, jpegBuf, jpegSize);
	FUNC7(dinfo, TRUE);
  this->dinfo.out_color_space = pf2cs[pixelFormat];
  if (flags & TJFLAG_FASTDCT) this->dinfo.dct_method = JDCT_FASTEST;
	if(flags&TJFLAG_FASTUPSAMPLE) dinfo->do_fancy_upsampling=FALSE;

	jpegwidth=dinfo->image_width;  jpegheight=dinfo->image_height;
	if(width==0) width=jpegwidth;
	if(height==0) height=jpegheight;
  for (i = 0; i < NUMSF; i++) {
		scaledw=FUNC0(jpegwidth, sf[i]);
		scaledh=FUNC0(jpegheight, sf[i]);
		if(scaledw<=width && scaledh<=height)
			break;
	}
	if(i>=NUMSF)
		FUNC1("tjDecompress2(): Could not scale down to desired image dimensions");
	width=scaledw;  height=scaledh;
	dinfo->scale_num=sf[i].num;
	dinfo->scale_denom=sf[i].denom;

	FUNC9(dinfo);
	if(pitch==0) pitch=dinfo->output_width*tjPixelSize[pixelFormat];

  if ((row_pointer =
       (JSAMPROW *)FUNC10(sizeof(JSAMPROW) * dinfo->output_height)) == NULL)
		FUNC1("tjDecompress2(): Memory allocation failure");
  if (FUNC12(this->jerr.setjmp_buffer)) {
		/* If we get here, the JPEG code has signaled an error. */
		retval=-1;  goto bailout;
	}
  for (i = 0; i < (int)dinfo->output_height; i++) {
		if(flags&TJFLAG_BOTTOMUP)
			row_pointer[i]=&dstBuf[(dinfo->output_height-i-1)*pitch];
    else
      row_pointer[i] = &dstBuf[i * pitch];
	}
	while(dinfo->output_scanline<dinfo->output_height)
		FUNC8(dinfo, &row_pointer[dinfo->output_scanline],
			dinfo->output_height-dinfo->output_scanline);
	FUNC5(dinfo);

	bailout:
	if(dinfo->global_state>DSTATE_START) FUNC4(dinfo);
	if(row_pointer) FUNC2(row_pointer);
	if(this->jerr.warning) retval=-1;
  this->jerr.stopOnWarning = FALSE;
	return retval;
}
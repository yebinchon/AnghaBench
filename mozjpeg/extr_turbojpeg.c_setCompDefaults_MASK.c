#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct jpeg_compress_struct {int restart_interval; int restart_in_rows; int num_components; TYPE_2__* comp_info; TYPE_1__* master; int /*<<< orphan*/  dct_method; void* arith_code; void* optimize_coding; int /*<<< orphan*/  input_components; int /*<<< orphan*/  in_color_space; } ;
struct TYPE_4__ {int h_samp_factor; int v_samp_factor; } ;
struct TYPE_3__ {scalar_t__ compress_profile; } ;

/* Variables and functions */
 scalar_t__ JCP_FASTEST ; 
 scalar_t__ JCP_MAX_COMPRESSION ; 
 int /*<<< orphan*/  JCS_GRAYSCALE ; 
 int /*<<< orphan*/  JCS_YCCK ; 
 int /*<<< orphan*/  JCS_YCbCr ; 
 int /*<<< orphan*/  JDCT_FASTEST ; 
 int /*<<< orphan*/  JDCT_ISLOW ; 
 int TJFLAG_ACCURATEDCT ; 
 int TJFLAG_PROGRESSIVE ; 
 int TJPF_CMYK ; 
 int TJSAMP_GRAY ; 
 void* TRUE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct jpeg_compress_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct jpeg_compress_struct*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/ * pf2cs ; 
 int FUNC5 (char*,char*,int*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int* tjMCUHeight ; 
 int* tjMCUWidth ; 
 int /*<<< orphan*/ * tjPixelSize ; 
 char FUNC8 (char) ; 

__attribute__((used)) static int FUNC9(struct jpeg_compress_struct *cinfo, int pixelFormat,
                           int subsamp, int jpegQual, int flags)
{
	int retval=0;
	char *env=NULL;

  cinfo->in_color_space = pf2cs[pixelFormat];
	cinfo->input_components=tjPixelSize[pixelFormat];
	if((env=FUNC0("TJ_REVERT"))!=NULL && FUNC7(env)>0 && !FUNC6(env, "1"))
		cinfo->master->compress_profile=JCP_FASTEST;
	FUNC2(cinfo);

#ifndef NO_GETENV
  if ((env = FUNC0("TJ_OPTIMIZE")) != NULL && FUNC7(env) > 0 &&
      !FUNC6(env, "1"))
		cinfo->optimize_coding=TRUE;
  if ((env = FUNC0("TJ_ARITHMETIC")) != NULL && FUNC7(env) > 0 &&
      !FUNC6(env, "1"))
		cinfo->arith_code=TRUE;
  if ((env = FUNC0("TJ_RESTART")) != NULL && FUNC7(env) > 0) {
    int temp = -1;
    char tempc = 0;

    if (FUNC5(env, "%d%c", &temp, &tempc) >= 1 && temp >= 0 &&
        temp <= 65535) {
      if (FUNC8(tempc) == 'B') {
				cinfo->restart_interval=temp;
				cinfo->restart_in_rows=0;
      } else
				cinfo->restart_in_rows=temp;
		}
	}
#endif

  if (jpegQual >= 0) {
		FUNC3(cinfo, jpegQual, TRUE);
    if (jpegQual >= 96 || flags & TJFLAG_ACCURATEDCT)
      cinfo->dct_method = JDCT_ISLOW;
    else
      cinfo->dct_method = JDCT_FASTEST;
	}
	if(subsamp==TJSAMP_GRAY)
		FUNC1(cinfo, JCS_GRAYSCALE);
	else if(pixelFormat==TJPF_CMYK)
		FUNC1(cinfo, JCS_YCCK);
  else
    FUNC1(cinfo, JCS_YCbCr);

  if (flags & TJFLAG_PROGRESSIVE)
    FUNC4(cinfo);
#ifndef NO_GETENV
  else if ((env = FUNC0("TJ_PROGRESSIVE")) != NULL && FUNC7(env) > 0 &&
           !FUNC6(env, "1"))
		FUNC4(cinfo);
#endif

	/* Set scan pattern again as colorspace might have changed */
	if(cinfo->master->compress_profile == JCP_MAX_COMPRESSION)
		FUNC4(cinfo);

	cinfo->comp_info[0].h_samp_factor=tjMCUWidth[subsamp]/8;
	cinfo->comp_info[1].h_samp_factor=1;
	cinfo->comp_info[2].h_samp_factor=1;
	if(cinfo->num_components>3)
		cinfo->comp_info[3].h_samp_factor=tjMCUWidth[subsamp]/8;
	cinfo->comp_info[0].v_samp_factor=tjMCUHeight[subsamp]/8;
	cinfo->comp_info[1].v_samp_factor=1;
	cinfo->comp_info[2].v_samp_factor=1;
	if(cinfo->num_components>3)
		cinfo->comp_info[3].v_samp_factor=tjMCUHeight[subsamp]/8;

	return retval;
}
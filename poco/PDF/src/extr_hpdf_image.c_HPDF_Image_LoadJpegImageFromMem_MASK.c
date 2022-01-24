#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  TYPE_1__* HPDF_MMgr ;
typedef  int /*<<< orphan*/ * HPDF_Image ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_INVALID_STREAM ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

HPDF_Image
FUNC7  (HPDF_MMgr    mmgr,
                            const HPDF_BYTE   *buf,
                                  HPDF_UINT    size,
                                  HPDF_Xref    xref)
{
	HPDF_Stream jpeg_data;
	HPDF_Image image;

	FUNC2 ((" HPDF_Image_LoadJpegImageFromMem\n"));

	jpeg_data = FUNC1(mmgr,size);
	if (!FUNC5 (jpeg_data)) {
		FUNC3 (mmgr->error, HPDF_INVALID_STREAM, 0);
		return NULL;
	}

	if (FUNC6 (jpeg_data, buf, size) != HPDF_OK) {
		FUNC4 (jpeg_data);
		return NULL;
	}

	image = FUNC0(mmgr,jpeg_data,xref);

	/* destroy file stream */
	FUNC4 (jpeg_data);

	return image;
}
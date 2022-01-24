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
typedef  int png_uint_32 ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_infop ;
typedef  int* png_bytep ;
struct TYPE_5__ {int /*<<< orphan*/  mmgr; int /*<<< orphan*/  stream; TYPE_1__* error; } ;
struct TYPE_4__ {scalar_t__ error_no; } ;
typedef  size_t HPDF_UINT ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Dict ;

/* Variables and functions */
 scalar_t__ HPDF_FAILD_TO_ALLOC_MEM ; 
 scalar_t__ HPDF_FILE_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_INVALID_PNG_IMAGE ; 
 scalar_t__ HPDF_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int**) ; 

__attribute__((used)) static HPDF_STATUS
FUNC7  (HPDF_Dict    image,
                             png_structp  png_ptr,
                             png_infop    info_ptr,
                             png_bytep    smask_data,
                             png_bytep    trans,
                             int          num_trans)
{
	HPDF_STATUS ret = HPDF_OK;
	HPDF_UINT i, j;
	png_bytep *row_ptr;
	png_uint_32 height = FUNC3(png_ptr, info_ptr);
	png_uint_32 width = FUNC4(png_ptr, info_ptr);

	row_ptr = FUNC1 (image->mmgr, height * sizeof(png_bytep));
	if (!row_ptr) {
		return HPDF_FAILD_TO_ALLOC_MEM;
	} else {
		png_uint_32 len = FUNC5(png_ptr, info_ptr);

		for (i = 0; i < (HPDF_UINT)height; i++) {
			row_ptr[i] = FUNC1(image->mmgr, len);
			if (!row_ptr[i]) {
				for (; i > 0; i--) {
					FUNC0 (image->mmgr, row_ptr[i]);
				}
				FUNC0 (image->mmgr, row_ptr);
				return HPDF_FAILD_TO_ALLOC_MEM;
			}
		}
	}

	FUNC6(png_ptr, row_ptr);
	if (image->error->error_no != HPDF_OK) {
		ret = HPDF_INVALID_PNG_IMAGE;
		goto Error;
	}

	for (j = 0; j < height; j++) {
		for (i = 0; i < width; i++) {
			smask_data[width * j + i] = (row_ptr[j][i] < num_trans) ? trans[row_ptr[j][i]] : 0xFF;
		}

		if (FUNC2 (image->stream, row_ptr[j], width) != HPDF_OK) {
			ret = HPDF_FILE_IO_ERROR;
			goto Error;
		}
	}

Error:
	for (i = 0; i < (HPDF_UINT)height; i++) {
		FUNC0 (image->mmgr, row_ptr[i]);
	}

	FUNC0 (image->mmgr, row_ptr);
	return ret;
}
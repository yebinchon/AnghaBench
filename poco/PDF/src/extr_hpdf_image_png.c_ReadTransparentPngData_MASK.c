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
typedef  int /*<<< orphan*/ ********* png_bytep ;
typedef  int png_byte ;
struct TYPE_5__ {int /*<<< orphan*/  mmgr; int /*<<< orphan*/  stream; TYPE_1__* error; } ;
struct TYPE_4__ {scalar_t__ error_no; } ;
typedef  size_t HPDF_UINT ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int HPDF_INT ;
typedef  TYPE_2__* HPDF_Dict ;

/* Variables and functions */
 scalar_t__ HPDF_FAILD_TO_ALLOC_MEM ; 
 scalar_t__ HPDF_FILE_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **********) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_INVALID_PNG_IMAGE ; 
 scalar_t__ HPDF_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *********,int) ; 
 int PNG_COLOR_MASK_ALPHA ; 
#define  PNG_COLOR_TYPE_GRAY_ALPHA 129 
#define  PNG_COLOR_TYPE_RGB_ALPHA 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **********) ; 

__attribute__((used)) static HPDF_STATUS
FUNC9  (HPDF_Dict    image,
                         png_structp  png_ptr,
                         png_infop    info_ptr,
                         png_bytep    smask_data)
{
	HPDF_STATUS ret = HPDF_OK;
	HPDF_INT row_len;
	HPDF_UINT i, j;
	png_bytep *row_ptr, row;
	png_byte color_type;
	png_uint_32 height = FUNC5(png_ptr, info_ptr);
	png_uint_32 width = FUNC6(png_ptr, info_ptr);

	color_type = FUNC4(png_ptr, info_ptr);

	if (!(color_type & PNG_COLOR_MASK_ALPHA)) {
		return HPDF_INVALID_PNG_IMAGE;
	}

	row_ptr = FUNC1 (image->mmgr, height * sizeof(png_bytep));
	if (!row_ptr) {
		return HPDF_FAILD_TO_ALLOC_MEM;
	} else {
		png_uint_32 len = FUNC7(png_ptr, info_ptr);

		for (i = 0; i < (HPDF_UINT)height; i++) {
			row_ptr[i] = FUNC1(image->mmgr, len);
			if (!row_ptr[i]) {
				for (; i > 0; i--) {
					FUNC0 (image->mmgr, &row_ptr[i]);
				}
				FUNC0 (image->mmgr, row_ptr);
				return HPDF_FAILD_TO_ALLOC_MEM;
			}
		}
	}

	FUNC8(png_ptr, row_ptr);
	if (image->error->error_no != HPDF_OK) {
		ret = HPDF_INVALID_PNG_IMAGE;
		goto Error;
	}

	switch (color_type) {
		case PNG_COLOR_TYPE_RGB_ALPHA:
			row_len = 3 * width * sizeof(png_byte);
			for (j = 0; j < height; j++) {
				for (i = 0; i < width; i++) {
					row = row_ptr[j];
					FUNC3(row + (3 * i), row + (4*i), 3);
					smask_data[width * j + i] = row[4 * i + 3];
				}

				if (FUNC2 (image->stream, row, row_len) != HPDF_OK) {
					ret = HPDF_FILE_IO_ERROR;
					goto Error;
				}
			}
			break;
		case PNG_COLOR_TYPE_GRAY_ALPHA:
			row_len = width * sizeof(png_byte);
			for (j = 0; j < height; j++) {
				for (i = 0; i < width; i++) {
					row = row_ptr[j];
					row[i] = row[2 * i];
					smask_data[width * j + i] = row[2 * i + 1];
				}

				if (FUNC2 (image->stream, row, row_len) != HPDF_OK) {
					ret = HPDF_FILE_IO_ERROR;
					goto Error;
				}
			}
			break;
		default:
			ret = HPDF_INVALID_PNG_IMAGE;
			goto Error;
	}

Error:
	for (i = 0; i < (HPDF_UINT)height; i++) {
		FUNC0 (image->mmgr, &row_ptr[i]);
	}

	FUNC0 (image->mmgr, row_ptr);
	return ret;
}
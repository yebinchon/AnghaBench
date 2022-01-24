#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
typedef  int /*<<< orphan*/ * png_structp ;
typedef  int /*<<< orphan*/  png_rw_ptr ;
typedef  int /*<<< orphan*/ * png_infop ;
typedef  int /*<<< orphan*/  png_bytep ;
struct TYPE_19__ {scalar_t__ error_no; } ;
struct TYPE_17__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_18__ {TYPE_3__* error; int /*<<< orphan*/  after_write_fn; int /*<<< orphan*/  before_write_fn; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  stream; TYPE_1__ header; } ;
typedef  scalar_t__ HPDF_Xref ;
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  scalar_t__ HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Dict ;
typedef  scalar_t__ HPDF_BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,char*,char*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ HPDF_FAILD_TO_ALLOC_MEM ; 
 scalar_t__ HPDF_FILE_IO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_INVALID_PNG_IMAGE ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_XOBJECT ; 
 int /*<<< orphan*/  HPDF_PNG_BYTES_TO_CHECK ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int PNG_COLOR_MASK_ALPHA ; 
 int PNG_COLOR_TYPE_GRAY ; 
 int PNG_COLOR_TYPE_GRAY_ALPHA ; 
 int PNG_COLOR_TYPE_PALETTE ; 
 int /*<<< orphan*/  PNG_INFO_tRNS ; 
 scalar_t__ PNG_INTERLACE_NONE ; 
 int /*<<< orphan*/  PNG_LIBPNG_VER_STRING ; 
 int /*<<< orphan*/  PngAfterWrite ; 
 int /*<<< orphan*/  PngBeforeWrite ; 
 int /*<<< orphan*/  PngErrorFunc ; 
 int /*<<< orphan*/  PngReadFunc ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HPDF_STATUS
FUNC27  (HPDF_Dict     image,
              HPDF_Xref     xref,
              HPDF_Stream   png_data,
              HPDF_BOOL     delayed_loading)

{
	HPDF_STATUS ret = HPDF_OK;
	png_uint_32 width, height;
	int bit_depth, color_type;
	png_structp png_ptr = NULL;
	png_infop info_ptr = NULL;

	FUNC8 ((" HPDF_Image_LoadPngImage\n"));

	/* create read_struct. */
	png_ptr = FUNC16 (PNG_LIBPNG_VER_STRING,
			image->error, PngErrorFunc, PngErrorFunc);

	if (png_ptr == NULL) {
		FUNC9 (image->error, HPDF_FAILD_TO_ALLOC_MEM, 0);
		return HPDF_FAILD_TO_ALLOC_MEM;
	}

	/* create info-struct */
	info_ptr = FUNC15 (png_ptr);

	if (info_ptr == NULL) {
		FUNC9 (image->error, HPDF_FAILD_TO_ALLOC_MEM, 0);
		goto Exit;
	}

	FUNC25 (png_ptr, HPDF_PNG_BYTES_TO_CHECK);
	FUNC24 (png_ptr, (void *)png_data, (png_rw_ptr)&PngReadFunc);

	/* reading info structure. */
	FUNC22(png_ptr, info_ptr);
	if (image->error->error_no != HPDF_OK) {
		goto Exit;
	}

	FUNC18(png_ptr, info_ptr, &width, &height, &bit_depth, &color_type, NULL, NULL, NULL);

	/* 16bit images are not supported. */
	if (bit_depth == 16) {
		FUNC26(png_ptr);
	}

	FUNC23(png_ptr, info_ptr);
	if (image->error->error_no != HPDF_OK) {
		goto Exit;
	}

	/* check palette-based images for transparent areas and load them immediately if found */
	if (xref && PNG_COLOR_TYPE_PALETTE & color_type) {
		png_bytep trans;
		int num_trans;
		HPDF_Dict smask;
		png_bytep smask_data;

		if (!FUNC21(png_ptr, info_ptr, PNG_INFO_tRNS) || 
			!FUNC20(png_ptr, info_ptr, &trans, &num_trans, NULL)) {
			goto no_transparent_color_in_palette;
		}

		smask = FUNC1 (image->mmgr, xref);
		if (!smask) {
			ret = HPDF_FAILD_TO_ALLOC_MEM;
			goto Exit;
		}

		smask->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;
		ret = FUNC3 (smask, "Type", "XObject");
		ret += FUNC3 (smask, "Subtype", "Image");
		ret += FUNC4 (smask, "Width", (HPDF_UINT)width);
		ret += FUNC4 (smask, "Height", (HPDF_UINT)height);
		ret += FUNC3 (smask, "ColorSpace", "DeviceGray");
		ret += FUNC4 (smask, "BitsPerComponent", (HPDF_UINT)bit_depth);

		if (ret != HPDF_OK) {
			FUNC5(smask);
			ret = HPDF_INVALID_PNG_IMAGE;
			goto Exit;
		}

		smask_data = FUNC7(image->mmgr, width * height);
		if (!smask_data) {
			FUNC5(smask);
			ret = HPDF_FAILD_TO_ALLOC_MEM;
			goto Exit;
		}

		if (FUNC13(image, png_ptr, info_ptr, smask_data, trans, num_trans) != HPDF_OK) {
			FUNC6(image->mmgr, smask_data);
			FUNC5(smask);
			ret = HPDF_INVALID_PNG_IMAGE;
			goto Exit;
		}

		if (FUNC10(smask->stream, smask_data, width * height) != HPDF_OK) {
			FUNC6(image->mmgr, smask_data);
			FUNC5(smask);
			ret = HPDF_FILE_IO_ERROR;
			goto Exit;
		}
		FUNC6(image->mmgr, smask_data);


		ret += FUNC0(image, png_ptr, info_ptr);
		ret += FUNC4 (image, "Width", (HPDF_UINT)width);
		ret += FUNC4 (image, "Height", (HPDF_UINT)height);
		ret += FUNC4 (image, "BitsPerComponent",	(HPDF_UINT)bit_depth);
		ret += FUNC2 (image, "SMask", smask);

		FUNC17(&png_ptr, &info_ptr, NULL);
		return HPDF_OK;
	}

no_transparent_color_in_palette:

	/* read images with alpha channel right away 
	   we have to do this because image transparent mask must be added to the Xref */
	if (xref && PNG_COLOR_MASK_ALPHA & color_type) {
		HPDF_Dict smask;
		png_bytep smask_data;

		smask = FUNC1 (image->mmgr, xref);
		if (!smask) {
			ret = HPDF_FAILD_TO_ALLOC_MEM;
			goto Exit;
		}

		smask->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;
		ret = FUNC3 (smask, "Type", "XObject");
		ret += FUNC3 (smask, "Subtype", "Image");
		ret += FUNC4 (smask, "Width", (HPDF_UINT)width);
		ret += FUNC4 (smask, "Height", (HPDF_UINT)height);
		ret += FUNC3 (smask, "ColorSpace", "DeviceGray");
		ret += FUNC4 (smask, "BitsPerComponent", (HPDF_UINT)bit_depth);

		if (ret != HPDF_OK) {
			FUNC5(smask);
			ret = HPDF_INVALID_PNG_IMAGE;
			goto Exit;
		}

		smask_data = FUNC7(image->mmgr, width * height);
		if (!smask_data) {
			FUNC5(smask);
			ret = HPDF_FAILD_TO_ALLOC_MEM;
			goto Exit;
		}

		if (FUNC14(image, png_ptr, info_ptr, smask_data) != HPDF_OK) {
			FUNC6(image->mmgr, smask_data);
			FUNC5(smask);
			ret = HPDF_INVALID_PNG_IMAGE;
			goto Exit;
		}

		if (FUNC10(smask->stream, smask_data, width * height) != HPDF_OK) {
			FUNC6(image->mmgr, smask_data);
			FUNC5(smask);
			ret = HPDF_FILE_IO_ERROR;
			goto Exit;
		}
		FUNC6(image->mmgr, smask_data);

		if (color_type == PNG_COLOR_TYPE_GRAY_ALPHA) {
			ret += FUNC3 (image, "ColorSpace", "DeviceGray");
		} else {
			ret += FUNC3 (image, "ColorSpace", "DeviceRGB");
		}
		ret += FUNC4 (image, "Width", (HPDF_UINT)width);
		ret += FUNC4 (image, "Height", (HPDF_UINT)height);
		ret += FUNC4 (image, "BitsPerComponent",	(HPDF_UINT)bit_depth);
		ret += FUNC2 (image, "SMask", smask);

		FUNC17(&png_ptr, &info_ptr, NULL);
		return HPDF_OK;
	}

	/* if the image has color palette, copy the pallet of the image to
	 * create color map.
	 */
	if (color_type == PNG_COLOR_TYPE_PALETTE)
		ret = FUNC0(image, png_ptr, info_ptr);
	else if (color_type == PNG_COLOR_TYPE_GRAY)
		ret = FUNC3 (image, "ColorSpace", "DeviceGray");
	else
		ret = FUNC3 (image, "ColorSpace", "DeviceRGB");

	if (ret != HPDF_OK)
		goto Exit;

	/* read image-data
	 * if the image is interlaced, read whole image at once.
	 * if delayed_loading is HPDF_TRUE, the data does not load this phase.
	 */
	if (delayed_loading) {
		image->before_write_fn = PngBeforeWrite;
		image->after_write_fn = PngAfterWrite;
	} else {
		if (FUNC19(png_ptr, info_ptr) != PNG_INTERLACE_NONE)
			ret = FUNC12(image, png_ptr, info_ptr);
		else
			ret = FUNC11(image, png_ptr, info_ptr);

		if (ret != HPDF_OK)
			goto Exit;
	}

	/* setting the info of the image. */
	if (FUNC4 (image, "Width", (HPDF_UINT)width)
			!= HPDF_OK)
		goto Exit;

	if (FUNC4 (image, "Height", (HPDF_UINT)height)
			!= HPDF_OK)
		goto Exit;

	if (FUNC4 (image, "BitsPerComponent",
				(HPDF_UINT)bit_depth) != HPDF_OK)
		goto Exit;

	/* clean up */
	FUNC17(&png_ptr, &info_ptr, NULL);

	return HPDF_OK;

Exit:
	FUNC17(&png_ptr, &info_ptr, NULL);

	if (ret != HPDF_OK) {
		return ret;
	}
	return image->error->error_no;
}
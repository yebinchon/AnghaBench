#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int size; } ;
struct TYPE_12__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_14__ {int /*<<< orphan*/  error; TYPE_5__* stream; TYPE_1__ header; } ;
struct TYPE_13__ {int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  int HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_MMgr ;
typedef  TYPE_3__* HPDF_Image ;
typedef  TYPE_3__* HPDF_Dict ;
typedef  scalar_t__ HPDF_ColorSpace ;

/* Variables and functions */
 char* COL_CMYK ; 
 char* COL_GRAY ; 
 char* COL_RGB ; 
 scalar_t__ HPDF_CS_DEVICE_CMYK ; 
 scalar_t__ HPDF_CS_DEVICE_GRAY ; 
 scalar_t__ HPDF_CS_DEVICE_RGB ; 
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,char*,char*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  HPDF_INVALID_COLOR_SPACE ; 
 int /*<<< orphan*/  HPDF_INVALID_IMAGE ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_XOBJECT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HPDF_Image
FUNC6 (HPDF_MMgr          mmgr,
                         HPDF_Stream        raw_data,
                         HPDF_Xref          xref,
                         HPDF_UINT          width,
                         HPDF_UINT          height,
                         HPDF_ColorSpace    color_space)
{
    HPDF_Dict image;
    HPDF_STATUS ret = HPDF_OK;
    HPDF_UINT size;

    FUNC3 ((" HPDF_Image_LoadRawImage\n"));

    if (color_space != HPDF_CS_DEVICE_GRAY &&
            color_space != HPDF_CS_DEVICE_RGB &&
            color_space != HPDF_CS_DEVICE_CMYK) {
        FUNC4 (mmgr->error, HPDF_INVALID_COLOR_SPACE, 0);
        return NULL;
    }

    image = FUNC0 (mmgr, xref);
    if (!image)
        return NULL;

    image->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;
    ret += FUNC1 (image, "Type", "XObject");
    ret += FUNC1 (image, "Subtype", "Image");
    if (ret != HPDF_OK)
        return NULL;

    if (color_space == HPDF_CS_DEVICE_GRAY) {
        size = width * height;
        ret = FUNC1 (image, "ColorSpace", COL_GRAY);
	} else if (color_space == HPDF_CS_DEVICE_CMYK) {
		size = width * height * 4;
		ret = FUNC1 (image, "ColorSpace", COL_CMYK);
    } else {
        size = width * height * 3;
        ret = FUNC1 (image, "ColorSpace", COL_RGB);
    }

    if (ret != HPDF_OK)
        return NULL;

    if (FUNC2 (image, "Width", width) != HPDF_OK)
        return NULL;

    if (FUNC2 (image, "Height", height) != HPDF_OK)
        return NULL;

    if (FUNC2 (image, "BitsPerComponent", 8) != HPDF_OK)
        return NULL;

    if (FUNC5 (raw_data, image->stream, 0, NULL) != HPDF_OK)
        return NULL;

    if (image->stream->size != size) {
        FUNC4 (image->error, HPDF_INVALID_IMAGE, 0);
        return NULL;
    }

    return image;
}
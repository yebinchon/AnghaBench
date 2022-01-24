#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_13__ {int /*<<< orphan*/  stream; TYPE_1__ header; } ;
struct TYPE_12__ {int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  int HPDF_UINT ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_MMgr ;
typedef  TYPE_3__* HPDF_Image ;
typedef  TYPE_3__* HPDF_Dict ;
typedef  int HPDF_DOUBLE ;
typedef  int HPDF_ColorSpace ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 char* COL_CMYK ; 
 char* COL_GRAY ; 
 char* COL_RGB ; 
#define  HPDF_CS_DEVICE_CMYK 130 
#define  HPDF_CS_DEVICE_GRAY 129 
#define  HPDF_CS_DEVICE_RGB 128 
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,char*,char*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  HPDF_INVALID_COLOR_SPACE ; 
 int /*<<< orphan*/  HPDF_INVALID_IMAGE ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_XOBJECT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

HPDF_Image
FUNC6  (HPDF_MMgr          mmgr,
                                 const HPDF_BYTE   *buf,
                                 HPDF_Xref          xref,
                                 HPDF_UINT          width,
                                 HPDF_UINT          height,
                                 HPDF_ColorSpace    color_space,
                                 HPDF_UINT          bits_per_component)
{
    HPDF_Dict image;
    HPDF_STATUS ret = HPDF_OK;
    HPDF_UINT size=0;

    FUNC3 ((" HPDF_Image_LoadRawImageFromMem\n"));

    if (color_space != HPDF_CS_DEVICE_GRAY &&
            color_space != HPDF_CS_DEVICE_RGB &&
            color_space != HPDF_CS_DEVICE_CMYK) {
        FUNC4 (mmgr->error, HPDF_INVALID_COLOR_SPACE, 0);
        return NULL;
    }

    if (bits_per_component != 1 && bits_per_component != 2 &&
            bits_per_component != 4 && bits_per_component != 8) {
        FUNC4 (mmgr->error, HPDF_INVALID_IMAGE, 0);
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

    switch (color_space) {
        case HPDF_CS_DEVICE_GRAY:
            size = (HPDF_UINT)((HPDF_DOUBLE)width * height / (8 / bits_per_component) + 0.876);
            ret = FUNC1 (image, "ColorSpace", COL_GRAY);
            break;
        case HPDF_CS_DEVICE_RGB:
            size = (HPDF_UINT)((HPDF_DOUBLE)width * height / (8 / bits_per_component) + 0.876);
            size *= 3;
            ret = FUNC1 (image, "ColorSpace", COL_RGB);
            break;
        case HPDF_CS_DEVICE_CMYK:
            size = (HPDF_UINT)((HPDF_DOUBLE)width * height / (8 / bits_per_component) + 0.876);
            size *= 4;
            ret = FUNC1 (image, "ColorSpace", COL_CMYK);
            break;
        default:;
    }

    if (ret != HPDF_OK)
        return NULL;

    if (FUNC2 (image, "Width", width) != HPDF_OK)
        return NULL;

    if (FUNC2 (image, "Height", height) != HPDF_OK)
        return NULL;

    if (FUNC2 (image, "BitsPerComponent", bits_per_component)
            != HPDF_OK)
        return NULL;

    if (FUNC5 (image->stream, buf, size) != HPDF_OK)
        return NULL;

    return image;
}
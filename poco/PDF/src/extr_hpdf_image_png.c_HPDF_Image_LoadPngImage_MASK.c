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
typedef  int /*<<< orphan*/  png_size_t ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_11__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_13__ {TYPE_1__ header; } ;
struct TYPE_12__ {int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  int HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_MMgr ;
typedef  TYPE_3__* HPDF_Image ;
typedef  TYPE_3__* HPDF_Dict ;
typedef  int /*<<< orphan*/  HPDF_BOOL ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  HPDF_INVALID_PNG_IMAGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_XOBJECT ; 
 int HPDF_PNG_BYTES_TO_CHECK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

HPDF_Image
FUNC8  (HPDF_MMgr        mmgr,
                          HPDF_Stream      png_data,
                          HPDF_Xref        xref,
                          HPDF_BOOL        delayed_loading)
{
    HPDF_STATUS ret;
    HPDF_Dict image;
    png_byte header[HPDF_PNG_BYTES_TO_CHECK];
    HPDF_UINT len = HPDF_PNG_BYTES_TO_CHECK;

    FUNC3 ((" HPDF_Image_LoadPngImage\n"));

    FUNC2 (header, 0x00, HPDF_PNG_BYTES_TO_CHECK);
    ret = FUNC5 (png_data, header, &len);
    if (ret != HPDF_OK ||
            FUNC7 (header, (png_size_t)0, HPDF_PNG_BYTES_TO_CHECK)) {
        FUNC4 (mmgr->error, HPDF_INVALID_PNG_IMAGE, 0);
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

    if (FUNC6 (image, xref, png_data, delayed_loading) != HPDF_OK)
        return NULL;

    return image;
}
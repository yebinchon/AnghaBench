#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_9__ {int /*<<< orphan*/  stream; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  int HPDF_UINT ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  TYPE_2__* HPDF_Image ;
typedef  TYPE_2__* HPDF_Dict ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;
typedef  int /*<<< orphan*/  HPDF_BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_XOBJECT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 

HPDF_Image
FUNC5  (HPDF_MMgr        mmgr,
                          const HPDF_BYTE   *buf,
                          HPDF_Xref        xref,
                          HPDF_UINT          width,
                          HPDF_UINT          height,
						  HPDF_UINT          line_width,
						  HPDF_BOOL			 top_is_first
                          )
{
    HPDF_Dict image;
    HPDF_STATUS ret = HPDF_OK;
    /* HPDF_UINT size; */

    FUNC3 ((" HPDF_Image_Load1BitImage\n"));

    image = FUNC0 (mmgr, xref);
    if (!image)
        return NULL;

    image->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;
    ret += FUNC1 (image, "Type", "XObject");
    ret += FUNC1 (image, "Subtype", "Image");
    if (ret != HPDF_OK)
        return NULL;

    /* size = width * height; */
    ret = FUNC1 (image, "ColorSpace", "DeviceGray");
    if (ret != HPDF_OK)
        return NULL;

    if (FUNC2 (image, "Width", width) != HPDF_OK)
        return NULL;

    if (FUNC2 (image, "Height", height) != HPDF_OK)
        return NULL;

    if (FUNC2 (image, "BitsPerComponent", 1) != HPDF_OK)
        return NULL;

    if (FUNC4 (buf, image->stream, NULL, width, height, line_width, top_is_first) != HPDF_OK)
        return NULL;

    return image;
}
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
struct TYPE_9__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  filter; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  scalar_t__ HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  TYPE_2__* HPDF_Image ;
typedef  TYPE_2__* HPDF_Dict ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*,char*) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_XOBJECT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 int HPDF_STREAM_BUF_SIZ ; 
 scalar_t__ HPDF_STREAM_EOF ; 
 int /*<<< orphan*/  HPDF_STREAM_FILTER_DCT_DECODE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

HPDF_Image
FUNC7  (HPDF_MMgr        mmgr,
                           HPDF_Stream      jpeg_data,
                           HPDF_Xref        xref)
{
    HPDF_Dict image;
    HPDF_STATUS ret = HPDF_OK;

    FUNC2 ((" HPDF_Image_LoadJpegImage\n"));

    image = FUNC0 (mmgr, xref);
    if (!image)
        return NULL;

    image->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;

    /* add requiered elements */
    image->filter = HPDF_STREAM_FILTER_DCT_DECODE;
    ret += FUNC1 (image, "Type", "XObject");
    ret += FUNC1 (image, "Subtype", "Image");
    if (ret != HPDF_OK)
        return NULL;

    if (FUNC6 (image, jpeg_data) != HPDF_OK)
        return NULL;

    if (FUNC4 (jpeg_data, 0, HPDF_SEEK_SET) != HPDF_OK)
        return NULL;

    for (;;) {
        HPDF_BYTE buf[HPDF_STREAM_BUF_SIZ];
        HPDF_UINT len = HPDF_STREAM_BUF_SIZ;
        HPDF_STATUS ret = FUNC3 (jpeg_data, buf,
                &len);

        if (ret != HPDF_OK) {
            if (ret == HPDF_STREAM_EOF) {
                if (len > 0) {
                    ret = FUNC5 (image->stream, buf, len);
                    if (ret != HPDF_OK)
                        return NULL;
                }
                break;
            } else
                return NULL;
        }

        if (FUNC5 (image->stream, buf, len) != HPDF_OK)
            return NULL;
    }

    return image;
}
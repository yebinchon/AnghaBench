#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  mmgr; int /*<<< orphan*/  error; } ;
struct TYPE_9__ {int /*<<< orphan*/  error; } ;
typedef  int HPDF_UINT16 ;
typedef  int HPDF_UINT ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Image ;
typedef  int HPDF_BYTE ;
typedef  int /*<<< orphan*/  HPDF_Array ;

/* Variables and functions */
 char* COL_CMYK ; 
 char* COL_GRAY ; 
 char* COL_RGB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_INVALID_JPEG_DATA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_CUR ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int*,int*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/  HPDF_UNSUPPORTED_JPEG_FORMAT ; 

__attribute__((used)) static HPDF_STATUS
FUNC12 (HPDF_Image   image,
                HPDF_Stream  stream)
{
    HPDF_UINT16 tag;
    HPDF_UINT16 height;
    HPDF_UINT16 width;
    HPDF_BYTE precision;
    HPDF_BYTE num_components;
    const char *color_space_name;
    HPDF_UINT len;
    HPDF_STATUS ret;
    HPDF_Array array;

    FUNC7 ((" HPDF_Image_LoadJpegHeader\n"));

    len = 2;
    if (FUNC9 (stream, (HPDF_BYTE *)&tag, &len) != HPDF_OK)
        return FUNC4 (stream->error);

    FUNC11 (&tag);
    if (tag != 0xFFD8)
        return HPDF_INVALID_JPEG_DATA;

    /* find SOF record */
    for (;;) {
        HPDF_UINT16 size;

        len = 2;
        if (FUNC9 (stream, (HPDF_BYTE *)&tag,  &len) != HPDF_OK)
            return FUNC4 (stream->error);

        FUNC11 (&tag);

        len = 2;
        if (FUNC9 (stream, (HPDF_BYTE *)&size,  &len) != HPDF_OK)
            return FUNC4 (stream->error);

        FUNC11 (&size);

        FUNC7 (("tag=%04X size=%u\n", tag, size));

        if (tag == 0xFFC0 || tag == 0xFFC1 ||
                tag == 0xFFC2 || tag == 0xFFC9) {

            len = 1;
            if (FUNC9 (stream, (HPDF_BYTE *)&precision, &len) !=
                    HPDF_OK)
                return FUNC4 (stream->error);

            len = 2;
            if (FUNC9 (stream, (HPDF_BYTE *)&height, &len) !=
                    HPDF_OK)
                return FUNC4 (stream->error);

            FUNC11 (&height);

            len = 2;
            if (FUNC9 (stream, (HPDF_BYTE *)&width, &len) != HPDF_OK)
                return FUNC4 (stream->error);

             FUNC11 (&width);

           len = 1;
            if (FUNC9 (stream, (HPDF_BYTE *)&num_components, &len) !=
                    HPDF_OK)
                return FUNC4 (stream->error);

            break;
        } else if ((tag | 0x00FF) != 0xFFFF)
            /* lost marker */
            return FUNC8 (image->error, HPDF_UNSUPPORTED_JPEG_FORMAT,
                    0);

        if (FUNC10 (stream, size - 2, HPDF_SEEK_CUR) != HPDF_OK)
                return FUNC4 (stream->error);
    }

    if (FUNC3 (image, "Height", height) != HPDF_OK)
        return FUNC4 (stream->error);

    if (FUNC3 (image, "Width", width) != HPDF_OK)
        return FUNC4 (stream->error);

    /* classification of RGB and CMYK is less than perfect
     * YCbCr and YCCK are classified into RGB or CMYK.
     *
     * It is necessary to read APP14 data to distinguish colorspace perfectly.

     */
    switch (num_components) {
        case 1:
            color_space_name = COL_GRAY;
            break;
        case 3:
            color_space_name = COL_RGB;
            break;
        case 4:
            array = FUNC1 (image->mmgr);
            if (!array)
                return FUNC4 (stream->error);

            ret = FUNC2 (image, "Decode", array);
            if (ret != HPDF_OK)
                return FUNC4 (stream->error);

            ret += FUNC0 (array, FUNC6 (image->mmgr, 1));
            ret += FUNC0 (array, FUNC6 (image->mmgr, 0));
            ret += FUNC0 (array, FUNC6 (image->mmgr, 1));
            ret += FUNC0 (array, FUNC6 (image->mmgr, 0));
            ret += FUNC0 (array, FUNC6 (image->mmgr, 1));
            ret += FUNC0 (array, FUNC6 (image->mmgr, 0));
            ret += FUNC0 (array, FUNC6 (image->mmgr, 1));
            ret += FUNC0 (array, FUNC6 (image->mmgr, 0));

            if (ret != HPDF_OK)
                return FUNC4 (stream->error);

            color_space_name = COL_CMYK;

            break;
        default:
            return FUNC8 (image->error, HPDF_UNSUPPORTED_JPEG_FORMAT,
                    0);
    }

    if (FUNC2 (image, "ColorSpace",
                FUNC5 (image->mmgr, color_space_name)) != HPDF_OK)
        return FUNC4 (stream->error);

    if (FUNC2 (image, "BitsPerComponent",
                FUNC6 (image->mmgr, precision)) != HPDF_OK)
        return FUNC4 (stream->error);

    return HPDF_OK;
}
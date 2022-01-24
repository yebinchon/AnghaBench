#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_infop ;
struct TYPE_7__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
typedef  TYPE_1__ png_color ;
struct TYPE_9__ {int /*<<< orphan*/  error_no; } ;
struct TYPE_8__ {TYPE_4__* error; int /*<<< orphan*/  mmgr; } ;
typedef  int HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  int HPDF_INT ;
typedef  TYPE_2__* HPDF_Dict ;
typedef  scalar_t__ HPDF_Binary ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;
typedef  scalar_t__ HPDF_Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  HPDF_CANNOT_GET_PALLET ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_LIBPNG_ERROR ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PNG_INFO_PLTE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,int*) ; 

__attribute__((used)) static HPDF_STATUS
FUNC10 (HPDF_Dict    image,
              png_structp  png_ptr,
              png_infop    info_ptr)
{
    HPDF_INT num_pl = 0;
    png_color *src_pl = NULL;
    HPDF_BYTE *ppallet;
    HPDF_BYTE *p;
    HPDF_UINT i;
    HPDF_Array array;

    /* png_get_PLTE does not call PngErrorFunc even if it failed.
     * so we call HPDF_Set_Error to set error-code.
     */
    if (FUNC9(png_ptr, info_ptr, (png_color**)&src_pl, &num_pl) !=
            PNG_INFO_PLTE)
        return FUNC8 (image->error, HPDF_LIBPNG_ERROR,
                    HPDF_CANNOT_GET_PALLET);


    /* make a pallet array for indexed image. */
    ppallet = FUNC7 (image->mmgr, num_pl * 3);
    if (!ppallet)
        return image->error->error_no;

    p = ppallet;
    for (i = 0; i < num_pl; i++, src_pl++) {
        *p++ = src_pl->red;
        *p++ = src_pl->green;
        *p++ = src_pl->blue;
    }

    array = FUNC3 (image->mmgr);
    if (array) {
        HPDF_Binary b;

        FUNC5 (image, "ColorSpace", array);

        FUNC1 (array, "Indexed");
        FUNC1 (array, "DeviceRGB");
        FUNC2 (array, num_pl - 1);

        b = FUNC4 (image->mmgr, ppallet, num_pl * 3);
        if (b)
            FUNC0 (array, b);
    }

    FUNC6 (image->mmgr, ppallet);

    return image->error->error_no;
}
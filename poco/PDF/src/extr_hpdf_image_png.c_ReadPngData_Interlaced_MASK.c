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
typedef  int /*<<< orphan*/ **** png_bytep ;
struct TYPE_5__ {TYPE_1__* error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  stream; } ;
struct TYPE_4__ {scalar_t__ error_no; } ;
typedef  size_t HPDF_UINT ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *****) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *****,int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ****,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *****) ; 

__attribute__((used)) static HPDF_STATUS
FUNC7  (HPDF_Dict    image,
                         png_structp  png_ptr,
                         png_infop    info_ptr)
{
    png_uint_32 len = FUNC5(png_ptr, info_ptr);
    png_uint_32 height = FUNC4(png_ptr, info_ptr);
    png_bytep* row_pointers = FUNC1 (image->mmgr,
                height * sizeof (png_bytep));

    if (row_pointers) {
        HPDF_UINT i;

        FUNC2 (row_pointers, 0, height * sizeof (png_bytep));
        for (i = 0; i < (HPDF_UINT)height; i++) {
            row_pointers[i] = FUNC1 (image->mmgr, len);

            if (image->error->error_no != HPDF_OK)
                break;
        }

        if (image->error->error_no == HPDF_OK) {
            FUNC6(png_ptr, row_pointers);
            if (image->error->error_no == HPDF_OK) {       /* add this line */
                for (i = 0; i < (HPDF_UINT)height; i++) {
                    if (FUNC3 (image->stream, row_pointers[i], len) !=
                            HPDF_OK)
                        break;
                }
            }
        }

        /* clean up */
        for (i = 0; i < (HPDF_UINT)height; i++) {
            FUNC0 (image->mmgr, &row_pointers[i]);
        }

        FUNC0 (image->mmgr, row_pointers);
    }

    return image->error->error_no;
}
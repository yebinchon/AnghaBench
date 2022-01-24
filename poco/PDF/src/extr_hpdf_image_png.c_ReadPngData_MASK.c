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
typedef  scalar_t__ png_uint_32 ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_infop ;
typedef  scalar_t__ png_bytep ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_5__ {TYPE_1__* error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  stream; } ;
struct TYPE_4__ {scalar_t__ error_no; } ;
typedef  scalar_t__ HPDF_UINT ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ HPDF_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HPDF_STATUS
FUNC6  (HPDF_Dict    image,
              png_structp  png_ptr,
              png_infop    info_ptr)
{
    png_uint_32 len = FUNC4(png_ptr, info_ptr);
    png_uint_32 height = FUNC3(png_ptr, info_ptr);
    png_bytep buf_ptr = FUNC1 (image->mmgr, len);

    if (buf_ptr) {
        HPDF_UINT i;

        for (i = 0; i < (HPDF_UINT)height; i++) {
            FUNC5(png_ptr, (png_byte**)&buf_ptr, NULL, 1);
            if (image->error->error_no != HPDF_OK)
                break;

            if (FUNC2 (image->stream, buf_ptr, len) != HPDF_OK)
                break;
        }

        FUNC0 (image->mmgr, buf_ptr);
    }

    return image->error->error_no;
}
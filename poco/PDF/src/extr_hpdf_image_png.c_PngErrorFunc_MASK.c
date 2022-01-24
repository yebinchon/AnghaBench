#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  png_structp ;
typedef  int HPDF_UINT ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  scalar_t__ HPDF_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  HPDF_LIBPNG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4  (png_structp       png_ptr,
               const char  *msg)
{
    char error_number[16];
    HPDF_UINT i;
    HPDF_STATUS detail_no;
    HPDF_Error error;

    /* pick out error-number from error message */
    FUNC1 (error_number, 0, 16);

     for (i = 0; i < 15; i++) {
         error_number[i] = *(msg + i);
         if (*(msg + i + 1) == ' ')
             break;
     }

     error = (HPDF_Error)FUNC3 (png_ptr);
     detail_no = (HPDF_STATUS)FUNC0 (error_number);
     FUNC2 (error, HPDF_LIBPNG_ERROR, detail_no);
}
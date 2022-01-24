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
typedef  int /*<<< orphan*/  png_uint_32 ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_bytep ;
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2  (png_structp   png_ptr,
              png_bytep     data,
              png_uint_32   length)
{
    HPDF_UINT len = length;
    HPDF_Stream stream = (HPDF_Stream)FUNC1 (png_ptr);

    FUNC0 (stream, data, &len);
}
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
typedef  int /*<<< orphan*/ * png_structrp ;
typedef  int /*<<< orphan*/  png_const_bytep ;

/* Variables and functions */
 size_t PNG_UINT_31_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(png_structrp png_ptr, png_uint_32 chunk_name,
    png_const_bytep data, size_t length)
{
   if (png_ptr == NULL)
      return;

   /* On 64-bit architectures 'length' may not fit in a png_uint_32. */
   if (length > PNG_UINT_31_MAX)
      FUNC0(png_ptr, "length exceeds PNG maximum");

   FUNC3(png_ptr, chunk_name, (png_uint_32)length);
   FUNC1(png_ptr, data, length);
   FUNC2(png_ptr);
}
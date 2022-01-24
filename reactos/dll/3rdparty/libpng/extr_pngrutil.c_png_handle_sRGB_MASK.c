#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
typedef  TYPE_1__* png_structrp ;
typedef  int /*<<< orphan*/  png_inforp ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int mode; TYPE_7__ colorspace; } ;

/* Variables and functions */
 int PNG_COLORSPACE_HAVE_INTENT ; 
 int PNG_COLORSPACE_INVALID ; 
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_HAVE_PLTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 

void /* PRIVATE */
FUNC7(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_byte intent;

   FUNC6(1, "in png_handle_sRGB");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      FUNC1(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & (PNG_HAVE_IDAT|PNG_HAVE_PLTE)) != 0)
   {
      FUNC4(png_ptr, length);
      FUNC0(png_ptr, "out of place");
      return;
   }

   if (length != 1)
   {
      FUNC4(png_ptr, length);
      FUNC0(png_ptr, "invalid");
      return;
   }

   FUNC5(png_ptr, &intent, 1);

   if (FUNC4(png_ptr, 0) != 0)
      return;

   /* If a colorspace error has already been output skip this chunk */
   if ((png_ptr->colorspace.flags & PNG_COLORSPACE_INVALID) != 0)
      return;

   /* Only one sRGB or iCCP chunk is allowed, use the HAVE_INTENT flag to detect
    * this.
    */
   if ((png_ptr->colorspace.flags & PNG_COLORSPACE_HAVE_INTENT) != 0)
   {
      png_ptr->colorspace.flags |= PNG_COLORSPACE_INVALID;
      FUNC3(png_ptr, info_ptr);
      FUNC0(png_ptr, "too many profiles");
      return;
   }

   (void)FUNC2(png_ptr, &png_ptr->colorspace, intent);
   FUNC3(png_ptr, info_ptr);
}
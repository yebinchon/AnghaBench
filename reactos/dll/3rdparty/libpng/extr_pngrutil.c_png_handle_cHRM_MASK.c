#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ whitex; scalar_t__ whitey; scalar_t__ redx; scalar_t__ redy; scalar_t__ greenx; scalar_t__ greeny; scalar_t__ bluex; scalar_t__ bluey; } ;
typedef  TYPE_1__ png_xy ;
typedef  int png_uint_32 ;
typedef  TYPE_2__* png_structrp ;
typedef  int /*<<< orphan*/  png_inforp ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int mode; TYPE_8__ colorspace; } ;

/* Variables and functions */
 int PNG_COLORSPACE_FROM_cHRM ; 
 int PNG_COLORSPACE_INVALID ; 
 scalar_t__ PNG_FIXED_ERROR ; 
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_HAVE_PLTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_8__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void /* PRIVATE */
FUNC8(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_byte buf[32];
   png_xy xy;

   FUNC6(1, "in png_handle_cHRM");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      FUNC1(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & (PNG_HAVE_IDAT|PNG_HAVE_PLTE)) != 0)
   {
      FUNC4(png_ptr, length);
      FUNC0(png_ptr, "out of place");
      return;
   }

   if (length != 32)
   {
      FUNC4(png_ptr, length);
      FUNC0(png_ptr, "invalid");
      return;
   }

   FUNC5(png_ptr, buf, 32);

   if (FUNC4(png_ptr, 0) != 0)
      return;

   xy.whitex = FUNC7(NULL, buf);
   xy.whitey = FUNC7(NULL, buf + 4);
   xy.redx   = FUNC7(NULL, buf + 8);
   xy.redy   = FUNC7(NULL, buf + 12);
   xy.greenx = FUNC7(NULL, buf + 16);
   xy.greeny = FUNC7(NULL, buf + 20);
   xy.bluex  = FUNC7(NULL, buf + 24);
   xy.bluey  = FUNC7(NULL, buf + 28);

   if (xy.whitex == PNG_FIXED_ERROR ||
       xy.whitey == PNG_FIXED_ERROR ||
       xy.redx   == PNG_FIXED_ERROR ||
       xy.redy   == PNG_FIXED_ERROR ||
       xy.greenx == PNG_FIXED_ERROR ||
       xy.greeny == PNG_FIXED_ERROR ||
       xy.bluex  == PNG_FIXED_ERROR ||
       xy.bluey  == PNG_FIXED_ERROR)
   {
      FUNC0(png_ptr, "invalid values");
      return;
   }

   /* If a colorspace error has already been output skip this chunk */
   if ((png_ptr->colorspace.flags & PNG_COLORSPACE_INVALID) != 0)
      return;

   if ((png_ptr->colorspace.flags & PNG_COLORSPACE_FROM_cHRM) != 0)
   {
      png_ptr->colorspace.flags |= PNG_COLORSPACE_INVALID;
      FUNC3(png_ptr, info_ptr);
      FUNC0(png_ptr, "duplicate");
      return;
   }

   png_ptr->colorspace.flags |= PNG_COLORSPACE_FROM_cHRM;
   (void)FUNC2(png_ptr, &png_ptr->colorspace, &xy,
       1/*prefer cHRM values*/);
   FUNC3(png_ptr, info_ptr);
}
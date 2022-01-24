#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
typedef  TYPE_1__* png_structp ;
typedef  int /*<<< orphan*/  png_int_32 ;
typedef  TYPE_2__* png_infop ;
typedef  int png_byte ;
struct TYPE_12__ {int valid; } ;
struct TYPE_11__ {int mode; } ;

/* Variables and functions */
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_INFO_oFFs ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 

void /* PRIVATE */
FUNC7(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_byte buf[9];
   png_int_32 offset_x, offset_y;
   int unit_type;

   FUNC2(1, "in png_handle_oFFs\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      FUNC3(png_ptr, "Missing IHDR before oFFs");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      FUNC6(png_ptr, "Invalid oFFs after IDAT");
      FUNC0(png_ptr, length);
      return;
   }
   else if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_oFFs))
   {
      FUNC6(png_ptr, "Duplicate oFFs chunk");
      FUNC0(png_ptr, length);
      return;
   }

   if (length != 9)
   {
      FUNC6(png_ptr, "Incorrect oFFs chunk length");
      FUNC0(png_ptr, length);
      return;
   }

   FUNC1(png_ptr, buf, 9);
   if (FUNC0(png_ptr, 0))
      return;

   offset_x = FUNC4(buf);
   offset_y = FUNC4(buf + 4);
   unit_type = buf[8];
   FUNC5(png_ptr, info_ptr, offset_x, offset_y, unit_type);
}
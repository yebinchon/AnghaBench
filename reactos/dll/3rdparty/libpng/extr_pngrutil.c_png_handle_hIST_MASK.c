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
typedef  int /*<<< orphan*/  png_uint_16 ;
typedef  TYPE_1__* png_structrp ;
typedef  TYPE_2__* png_inforp ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_12__ {int valid; } ;
struct TYPE_11__ {int mode; scalar_t__ num_palette; } ;

/* Variables and functions */
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_HAVE_PLTE ; 
 int PNG_INFO_hIST ; 
 int PNG_MAX_PALETTE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 

void /* PRIVATE */
FUNC7(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   unsigned int num, i;
   png_uint_16 readbuf[PNG_MAX_PALETTE_LENGTH];

   FUNC4(1, "in png_handle_hIST");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      FUNC1(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & PNG_HAVE_IDAT) != 0 ||
       (png_ptr->mode & PNG_HAVE_PLTE) == 0)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "out of place");
      return;
   }

   else if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_hIST) != 0)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "duplicate");
      return;
   }

   num = length / 2 ;

   if (num != (unsigned int) png_ptr->num_palette ||
       num > (unsigned int) PNG_MAX_PALETTE_LENGTH)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "invalid");
      return;
   }

   for (i = 0; i < num; i++)
   {
      png_byte buf[2];

      FUNC3(png_ptr, buf, 2);
      readbuf[i] = FUNC5(buf);
   }

   if (FUNC2(png_ptr, 0) != 0)
      return;

   FUNC6(png_ptr, info_ptr, readbuf);
}
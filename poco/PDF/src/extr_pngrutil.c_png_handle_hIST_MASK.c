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
typedef  TYPE_1__* png_structp ;
typedef  TYPE_2__* png_infop ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_12__ {int valid; } ;
struct TYPE_11__ {int mode; scalar_t__ num_palette; } ;

/* Variables and functions */
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_HAVE_PLTE ; 
 int PNG_INFO_hIST ; 
 int PNG_MAX_PALETTE_LENGTH ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 

void /* PRIVATE */
FUNC7(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   unsigned int num, i;
   png_uint_16 readbuf[PNG_MAX_PALETTE_LENGTH];

   FUNC2(1, "in png_handle_hIST\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      FUNC3(png_ptr, "Missing IHDR before hIST");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      FUNC6(png_ptr, "Invalid hIST after IDAT");
      FUNC0(png_ptr, length);
      return;
   }
   else if (!(png_ptr->mode & PNG_HAVE_PLTE))
   {
      FUNC6(png_ptr, "Missing PLTE before hIST");
      FUNC0(png_ptr, length);
      return;
   }
   else if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_hIST))
   {
      FUNC6(png_ptr, "Duplicate hIST chunk");
      FUNC0(png_ptr, length);
      return;
   }

   num = length / 2 ;
   if (num != (unsigned int) png_ptr->num_palette || num >
      (unsigned int) PNG_MAX_PALETTE_LENGTH)
   {
      FUNC6(png_ptr, "Incorrect hIST chunk length");
      FUNC0(png_ptr, length);
      return;
   }

   for (i = 0; i < num; i++)
   {
      png_byte buf[2];

      FUNC1(png_ptr, buf, 2);
      readbuf[i] = FUNC4(buf);
   }

   if (FUNC0(png_ptr, 0))
      return;

   FUNC5(png_ptr, info_ptr, readbuf);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
struct TYPE_13__ {int /*<<< orphan*/  year; void* month; void* day; void* hour; void* minute; void* second; } ;
typedef  TYPE_1__ png_time ;
typedef  TYPE_2__* png_structp ;
typedef  TYPE_3__* png_infop ;
typedef  void* png_byte ;
struct TYPE_15__ {int valid; } ;
struct TYPE_14__ {int mode; } ;

/* Variables and functions */
 int PNG_AFTER_IDAT ; 
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_INFO_tIME ; 
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void**,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 

void /* PRIVATE */
FUNC7(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_byte buf[7];
   png_time mod_time;

   FUNC2(1, "in png_handle_tIME\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      FUNC3(png_ptr, "Out of place tIME chunk");
   else if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_tIME))
   {
      FUNC6(png_ptr, "Duplicate tIME chunk");
      FUNC0(png_ptr, length);
      return;
   }

   if (png_ptr->mode & PNG_HAVE_IDAT)
      png_ptr->mode |= PNG_AFTER_IDAT;

   if (length != 7)
   {
      FUNC6(png_ptr, "Incorrect tIME chunk length");
      FUNC0(png_ptr, length);
      return;
   }

   FUNC1(png_ptr, buf, 7);
   if (FUNC0(png_ptr, 0))
      return;

   mod_time.second = buf[6];
   mod_time.minute = buf[5];
   mod_time.hour = buf[4];
   mod_time.day = buf[3];
   mod_time.month = buf[2];
   mod_time.year = FUNC4(buf);

   FUNC5(png_ptr, info_ptr, &mod_time);
}
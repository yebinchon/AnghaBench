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
typedef  TYPE_2__* png_structrp ;
typedef  TYPE_3__* png_inforp ;
typedef  void* png_byte ;
struct TYPE_15__ {int valid; } ;
struct TYPE_14__ {int mode; } ;

/* Variables and functions */
 int PNG_AFTER_IDAT ; 
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_INFO_tIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,TYPE_1__*) ; 

void /* PRIVATE */
FUNC7(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_byte buf[7];
   png_time mod_time;

   FUNC4(1, "in png_handle_tIME");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      FUNC1(png_ptr, "missing IHDR");

   else if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_tIME) != 0)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "duplicate");
      return;
   }

   if ((png_ptr->mode & PNG_HAVE_IDAT) != 0)
      png_ptr->mode |= PNG_AFTER_IDAT;

   if (length != 7)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "invalid");
      return;
   }

   FUNC3(png_ptr, buf, 7);

   if (FUNC2(png_ptr, 0) != 0)
      return;

   mod_time.second = buf[6];
   mod_time.minute = buf[5];
   mod_time.hour = buf[4];
   mod_time.day = buf[3];
   mod_time.month = buf[2];
   mod_time.year = FUNC5(buf);

   FUNC6(png_ptr, info_ptr, &mod_time);
}
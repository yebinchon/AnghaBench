#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
typedef  TYPE_1__* png_structp ;
typedef  int /*<<< orphan*/  png_infop ;
struct TYPE_6__ {int mode; } ;

/* Variables and functions */
 int PNG_AFTER_IDAT ; 
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IEND ; 
 int PNG_HAVE_IHDR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

void /* PRIVATE */
FUNC4(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   FUNC1(1, "in png_handle_IEND\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR) || !(png_ptr->mode & PNG_HAVE_IDAT))
   {
      FUNC2(png_ptr, "No image in file");
   }

   png_ptr->mode |= (PNG_AFTER_IDAT | PNG_HAVE_IEND);

   if (length != 0)
   {
      FUNC3(png_ptr, "Incorrect IEND chunk length");
   }
   FUNC0(png_ptr, length);

   info_ptr =info_ptr; /* quiet compiler warnings about unused info_ptr */
}
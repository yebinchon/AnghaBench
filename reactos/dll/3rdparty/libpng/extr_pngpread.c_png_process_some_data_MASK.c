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
typedef  TYPE_1__* png_structrp ;
typedef  int /*<<< orphan*/  png_inforp ;
struct TYPE_6__ {int process_mode; int /*<<< orphan*/  buffer_size; } ;

/* Variables and functions */
#define  PNG_READ_CHUNK_MODE 130 
#define  PNG_READ_IDAT_MODE 129 
#define  PNG_READ_SIG_MODE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void /* PRIVATE */
FUNC3(png_structrp png_ptr, png_inforp info_ptr)
{
   if (png_ptr == NULL)
      return;

   switch (png_ptr->process_mode)
   {
      case PNG_READ_SIG_MODE:
      {
         FUNC2(png_ptr, info_ptr);
         break;
      }

      case PNG_READ_CHUNK_MODE:
      {
         FUNC1(png_ptr, info_ptr);
         break;
      }

      case PNG_READ_IDAT_MODE:
      {
         FUNC0(png_ptr);
         break;
      }

      default:
      {
         png_ptr->buffer_size = 0;
         break;
      }
   }
}
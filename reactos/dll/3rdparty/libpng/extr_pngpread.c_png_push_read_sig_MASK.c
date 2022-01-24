#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* png_structrp ;
typedef  TYPE_2__* png_inforp ;
typedef  size_t png_byte ;
struct TYPE_8__ {int /*<<< orphan*/ * signature; } ;
struct TYPE_7__ {size_t sig_bytes; size_t buffer_size; int /*<<< orphan*/  process_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_READ_CHUNK_MODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t,size_t) ; 

void /* PRIVATE */
FUNC3(png_structrp png_ptr, png_inforp info_ptr)
{
   size_t num_checked = png_ptr->sig_bytes; /* SAFE, does not exceed 8 */
   size_t num_to_check = 8 - num_checked;

   if (png_ptr->buffer_size < num_to_check)
   {
      num_to_check = png_ptr->buffer_size;
   }

   FUNC1(png_ptr, &(info_ptr->signature[num_checked]),
       num_to_check);
   png_ptr->sig_bytes = (png_byte)(png_ptr->sig_bytes + num_to_check);

   if (FUNC2(info_ptr->signature, num_checked, num_to_check))
   {
      if (num_checked < 4 &&
          FUNC2(info_ptr->signature, num_checked, num_to_check - 4))
         FUNC0(png_ptr, "Not a PNG file");

      else
         FUNC0(png_ptr, "PNG file corrupted by ASCII conversion");
   }
   else
   {
      if (png_ptr->sig_bytes >= 8)
      {
         png_ptr->process_mode = PNG_READ_CHUNK_MODE;
      }
   }
}
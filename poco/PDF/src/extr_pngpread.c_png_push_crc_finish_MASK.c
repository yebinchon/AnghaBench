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
typedef  scalar_t__ png_size_t ;
struct TYPE_6__ {scalar_t__ skip_length; scalar_t__ save_buffer_size; int buffer_size; scalar_t__ current_buffer_size; int /*<<< orphan*/  process_mode; int /*<<< orphan*/  current_buffer_ptr; int /*<<< orphan*/  save_buffer_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_READ_CHUNK_MODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void /* PRIVATE */
FUNC3(png_structp png_ptr)
{
   if (png_ptr->skip_length && png_ptr->save_buffer_size)
   {
      png_size_t save_size;

      if (png_ptr->skip_length < (png_uint_32)png_ptr->save_buffer_size)
         save_size = (png_size_t)png_ptr->skip_length;
      else
         save_size = png_ptr->save_buffer_size;

      FUNC0(png_ptr, png_ptr->save_buffer_ptr, save_size);

      png_ptr->skip_length -= save_size;
      png_ptr->buffer_size -= save_size;
      png_ptr->save_buffer_size -= save_size;
      png_ptr->save_buffer_ptr += save_size;
   }
   if (png_ptr->skip_length && png_ptr->current_buffer_size)
   {
      png_size_t save_size;

      if (png_ptr->skip_length < (png_uint_32)png_ptr->current_buffer_size)
         save_size = (png_size_t)png_ptr->skip_length;
      else
         save_size = png_ptr->current_buffer_size;

      FUNC0(png_ptr, png_ptr->current_buffer_ptr, save_size);

      png_ptr->skip_length -= save_size;
      png_ptr->buffer_size -= save_size;
      png_ptr->current_buffer_size -= save_size;
      png_ptr->current_buffer_ptr += save_size;
   }
   if (!png_ptr->skip_length)
   {
      if (png_ptr->buffer_size < 4)
      {
         FUNC2(png_ptr);
         return;
      }

      FUNC1(png_ptr, 0);
      png_ptr->process_mode = PNG_READ_CHUNK_MODE;
   }
}
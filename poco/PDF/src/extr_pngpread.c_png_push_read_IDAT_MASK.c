#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
typedef  TYPE_1__* png_structp ;
typedef  scalar_t__ png_size_t ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_12__ {int mode; int buffer_size; scalar_t__ push_length; int flags; scalar_t__ idat_size; scalar_t__ save_buffer_size; scalar_t__ current_buffer_size; int /*<<< orphan*/  current_buffer_ptr; int /*<<< orphan*/  save_buffer_ptr; int /*<<< orphan*/  process_mode; int /*<<< orphan*/  chunk_name; } ;
typedef  int /*<<< orphan*/  PNG_CONST ;

/* Variables and functions */
 int PNG_AFTER_IDAT ; 
 int PNG_FLAG_ZLIB_FINISHED ; 
 int PNG_HAVE_CHUNK_HEADER ; 
 int /*<<< orphan*/  PNG_READ_CHUNK_MODE ; 
 int /*<<< orphan*/  png_IDAT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

void /* PRIVATE */
FUNC10(png_structp png_ptr)
{
#ifdef PNG_USE_LOCAL_ARRAYS
   PNG_CONST PNG_IDAT;
#endif
   if (!(png_ptr->mode & PNG_HAVE_CHUNK_HEADER))
   {
      png_byte chunk_length[4];

      if (png_ptr->buffer_size < 8)
      {
         FUNC8(png_ptr);
         return;
      }

      FUNC7(png_ptr, chunk_length, 4);
      png_ptr->push_length = FUNC4(png_ptr,chunk_length);
      FUNC9(png_ptr);
      FUNC2(png_ptr, png_ptr->chunk_name, 4);
      png_ptr->mode |= PNG_HAVE_CHUNK_HEADER;

      if (FUNC5(png_ptr->chunk_name, png_IDAT, 4))
      {
         png_ptr->process_mode = PNG_READ_CHUNK_MODE;
         if (!(png_ptr->flags & PNG_FLAG_ZLIB_FINISHED))
            FUNC3(png_ptr, "Not enough compressed data");
         return;
      }

      png_ptr->idat_size = png_ptr->push_length;
   }
   if (png_ptr->idat_size && png_ptr->save_buffer_size)
   {
      png_size_t save_size;

      if (png_ptr->idat_size < (png_uint_32)png_ptr->save_buffer_size)
      {
         save_size = (png_size_t)png_ptr->idat_size;
         /* check for overflow */
         if((png_uint_32)save_size != png_ptr->idat_size)
            FUNC3(png_ptr, "save_size overflowed in pngpread");
      }
      else
         save_size = png_ptr->save_buffer_size;

      FUNC0(png_ptr, png_ptr->save_buffer_ptr, save_size);
      if (!(png_ptr->flags & PNG_FLAG_ZLIB_FINISHED))
         FUNC6(png_ptr, png_ptr->save_buffer_ptr, save_size);
      png_ptr->idat_size -= save_size;
      png_ptr->buffer_size -= save_size;
      png_ptr->save_buffer_size -= save_size;
      png_ptr->save_buffer_ptr += save_size;
   }
   if (png_ptr->idat_size && png_ptr->current_buffer_size)
   {
      png_size_t save_size;

      if (png_ptr->idat_size < (png_uint_32)png_ptr->current_buffer_size)
      {
         save_size = (png_size_t)png_ptr->idat_size;
         /* check for overflow */
         if((png_uint_32)save_size != png_ptr->idat_size)
            FUNC3(png_ptr, "save_size overflowed in pngpread");
      }
      else
         save_size = png_ptr->current_buffer_size;

      FUNC0(png_ptr, png_ptr->current_buffer_ptr, save_size);
      if (!(png_ptr->flags & PNG_FLAG_ZLIB_FINISHED))
        FUNC6(png_ptr, png_ptr->current_buffer_ptr, save_size);

      png_ptr->idat_size -= save_size;
      png_ptr->buffer_size -= save_size;
      png_ptr->current_buffer_size -= save_size;
      png_ptr->current_buffer_ptr += save_size;
   }
   if (!png_ptr->idat_size)
   {
      if (png_ptr->buffer_size < 4)
      {
         FUNC8(png_ptr);
         return;
      }

      FUNC1(png_ptr, 0);
      png_ptr->mode &= ~PNG_HAVE_CHUNK_HEADER;
      png_ptr->mode |= PNG_AFTER_IDAT;
   }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
typedef  TYPE_2__* png_structrp ;
typedef  scalar_t__ png_byte ;
typedef  scalar_t__ png_alloc_size_t ;
struct TYPE_9__ {size_t size; int /*<<< orphan*/ * data; scalar_t__ location; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {scalar_t__ user_chunk_malloc_max; TYPE_1__ unknown_chunk; scalar_t__ mode; int /*<<< orphan*/  chunk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PNG_SIZE_MAX ; 
 scalar_t__ PNG_USER_CHUNK_MALLOC_MAX ; 
 int /*<<< orphan*/  png_bytep ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(png_structrp png_ptr, png_uint_32 length)
{
   png_alloc_size_t limit = PNG_SIZE_MAX;

   if (png_ptr->unknown_chunk.data != NULL)
   {
      FUNC4(png_ptr, png_ptr->unknown_chunk.data);
      png_ptr->unknown_chunk.data = NULL;
   }

#  ifdef PNG_SET_USER_LIMITS_SUPPORTED
   if (png_ptr->user_chunk_malloc_max > 0 &&
       png_ptr->user_chunk_malloc_max < limit)
      limit = png_ptr->user_chunk_malloc_max;

#  elif PNG_USER_CHUNK_MALLOC_MAX > 0
   if (PNG_USER_CHUNK_MALLOC_MAX < limit)
      limit = PNG_USER_CHUNK_MALLOC_MAX;
#  endif

   if (length <= limit)
   {
      FUNC0(png_ptr->unknown_chunk.name, png_ptr->chunk_name);
      /* The following is safe because of the PNG_SIZE_MAX init above */
      png_ptr->unknown_chunk.size = (size_t)length/*SAFE*/;
      /* 'mode' is a flag array, only the bottom four bits matter here */
      png_ptr->unknown_chunk.location = (png_byte)png_ptr->mode/*SAFE*/;

      if (length == 0)
         png_ptr->unknown_chunk.data = NULL;

      else
      {
         /* Do a 'warn' here - it is handled below. */
         png_ptr->unknown_chunk.data = FUNC6(png_bytep,
             FUNC5(png_ptr, length));
      }
   }

   if (png_ptr->unknown_chunk.data == NULL && length > 0)
   {
      /* This is benign because we clean up correctly */
      FUNC2(png_ptr, length);
      FUNC1(png_ptr, "unknown chunk exceeds memory limits");
      return 0;
   }

   else
   {
      if (length > 0)
         FUNC3(png_ptr, png_ptr->unknown_chunk.data, length);
      FUNC2(png_ptr, 0);
      return 1;
   }
}
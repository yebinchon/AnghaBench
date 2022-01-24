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
typedef  TYPE_1__* png_structrp ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_6__ {void* io_state; scalar_t__ chunk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* PNG_IO_CHUNK_DATA ; 
 void* PNG_IO_CHUNK_HDR ; 
 void* PNG_IO_WRITING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(png_structrp png_ptr, png_uint_32 chunk_name,
    png_uint_32 length)
{
   png_byte buf[8];

#if defined(PNG_DEBUG) && (PNG_DEBUG > 0)
   PNG_CSTRING_FROM_CHUNK(buf, chunk_name);
   png_debug2(0, "Writing %s chunk, length = %lu", buf, (unsigned long)length);
#endif

   if (png_ptr == NULL)
      return;

#ifdef PNG_IO_STATE_SUPPORTED
   /* Inform the I/O callback that the chunk header is being written.
    * PNG_IO_CHUNK_HDR requires a single I/O call.
    */
   png_ptr->io_state = PNG_IO_WRITING | PNG_IO_CHUNK_HDR;
#endif

   /* Write the length and the chunk name */
   FUNC4(buf, length);
   FUNC4(buf + 4, chunk_name);
   FUNC5(png_ptr, buf, 8);

   /* Put the chunk name into png_ptr->chunk_name */
   png_ptr->chunk_name = chunk_name;

   /* Reset the crc and run it over the chunk name */
   FUNC3(png_ptr);

   FUNC1(png_ptr, buf + 4, 4);

#ifdef PNG_IO_STATE_SUPPORTED
   /* Inform the I/O callback that chunk data will (possibly) be written.
    * PNG_IO_CHUNK_DATA does NOT require a specific number of I/O calls.
    */
   png_ptr->io_state = PNG_IO_WRITING | PNG_IO_CHUNK_DATA;
#endif
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
typedef  TYPE_1__* png_structrp ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_9__ {void* io_state; scalar_t__ chunk_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* PNG_IO_CHUNK_DATA ; 
 void* PNG_IO_CHUNK_HDR ; 
 void* PNG_IO_READING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

png_uint_32 /* PRIVATE */
FUNC8(png_structrp png_ptr)
{
   png_byte buf[8];
   png_uint_32 length;

#ifdef PNG_IO_STATE_SUPPORTED
   png_ptr->io_state = PNG_IO_READING | PNG_IO_CHUNK_HDR;
#endif

   /* Read the length and the chunk name.
    * This must be performed in a single I/O call.
    */
   FUNC6(png_ptr, buf, 8);
   length = FUNC5(png_ptr, buf);

   /* Put the chunk name into png_ptr->chunk_name. */
   png_ptr->chunk_name = FUNC0(buf+4);

   FUNC4(0, "Reading %lx chunk, length = %lu",
       (unsigned long)png_ptr->chunk_name, (unsigned long)length);

   /* Reset the crc and run it over the chunk name. */
   FUNC7(png_ptr);
   FUNC1(png_ptr, buf + 4, 4);

   /* Check to see if chunk name is valid. */
   FUNC3(png_ptr, png_ptr->chunk_name);

   /* Check for too-large chunk length */
   FUNC2(png_ptr, length);

#ifdef PNG_IO_STATE_SUPPORTED
   png_ptr->io_state = PNG_IO_READING | PNG_IO_CHUNK_DATA;
#endif

   return length;
}
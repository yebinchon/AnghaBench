#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uInt ;
typedef  TYPE_2__* png_structrp ;
typedef  int /*<<< orphan*/ * png_bytep ;
typedef  int /*<<< orphan*/  png_byte ;
typedef  scalar_t__ png_alloc_size_t ;
struct TYPE_13__ {int avail_out; scalar_t__ avail_in; char* msg; int /*<<< orphan*/ * next_out; int /*<<< orphan*/ * next_in; } ;
struct TYPE_14__ {scalar_t__ idat_size; scalar_t__ chunk_name; scalar_t__ IDAT_read_size; TYPE_1__ zstream; int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_AFTER_IDAT ; 
 int /*<<< orphan*/  PNG_FLAG_ZSTREAM_ENDED ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int PNG_INFLATE_BUF_SIZE ; 
 scalar_t__ ZLIB_IO_MAX ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 scalar_t__ png_IDAT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 

void /* PRIVATE */
FUNC9(png_structrp png_ptr, png_bytep output,
    png_alloc_size_t avail_out)
{
   /* Loop reading IDATs and decompressing the result into output[avail_out] */
   png_ptr->zstream.next_out = output;
   png_ptr->zstream.avail_out = 0; /* safety: set below */

   if (output == NULL)
      avail_out = 0;

   do
   {
      int ret;
      png_byte tmpbuf[PNG_INFLATE_BUF_SIZE];

      if (png_ptr->zstream.avail_in == 0)
      {
         uInt avail_in;
         png_bytep buffer;

         while (png_ptr->idat_size == 0)
         {
            FUNC3(png_ptr, 0);

            png_ptr->idat_size = FUNC7(png_ptr);
            /* This is an error even in the 'check' case because the code just
             * consumed a non-IDAT header.
             */
            if (png_ptr->chunk_name != png_IDAT)
               FUNC5(png_ptr, "Not enough image data");
         }

         avail_in = png_ptr->IDAT_read_size;

         if (avail_in > png_ptr->idat_size)
            avail_in = (uInt)png_ptr->idat_size;

         /* A PNG with a gradually increasing IDAT size will defeat this attempt
          * to minimize memory usage by causing lots of re-allocs, but
          * realistically doing IDAT_read_size re-allocs is not likely to be a
          * big problem.
          */
         buffer = FUNC6(png_ptr, avail_in, 0/*error*/);

         FUNC4(png_ptr, buffer, avail_in);
         png_ptr->idat_size -= avail_in;

         png_ptr->zstream.next_in = buffer;
         png_ptr->zstream.avail_in = avail_in;
      }

      /* And set up the output side. */
      if (output != NULL) /* standard read */
      {
         uInt out = ZLIB_IO_MAX;

         if (out > avail_out)
            out = (uInt)avail_out;

         avail_out -= out;
         png_ptr->zstream.avail_out = out;
      }

      else /* after last row, checking for end */
      {
         png_ptr->zstream.next_out = tmpbuf;
         png_ptr->zstream.avail_out = (sizeof tmpbuf);
      }

      /* Use NO_FLUSH; this gives zlib the maximum opportunity to optimize the
       * process.  If the LZ stream is truncated the sequential reader will
       * terminally damage the stream, above, by reading the chunk header of the
       * following chunk (it then exits with png_error).
       *
       * TODO: deal more elegantly with truncated IDAT lists.
       */
      ret = FUNC0(png_ptr, Z_NO_FLUSH);

      /* Take the unconsumed output back. */
      if (output != NULL)
         avail_out += png_ptr->zstream.avail_out;

      else /* avail_out counts the extra bytes */
         avail_out += (sizeof tmpbuf) - png_ptr->zstream.avail_out;

      png_ptr->zstream.avail_out = 0;

      if (ret == Z_STREAM_END)
      {
         /* Do this for safety; we won't read any more into this row. */
         png_ptr->zstream.next_out = NULL;

         png_ptr->mode |= PNG_AFTER_IDAT;
         png_ptr->flags |= PNG_FLAG_ZSTREAM_ENDED;

         if (png_ptr->zstream.avail_in > 0 || png_ptr->idat_size > 0)
            FUNC1(png_ptr, "Extra compressed data");
         break;
      }

      if (ret != Z_OK)
      {
         FUNC8(png_ptr, ret);

         if (output != NULL)
            FUNC2(png_ptr, png_ptr->zstream.msg);

         else /* checking */
         {
            FUNC1(png_ptr, png_ptr->zstream.msg);
            return;
         }
      }
   } while (avail_out > 0);

   if (avail_out > 0)
   {
      /* The stream ended before the image; this is the same as too few IDATs so
       * should be handled the same way.
       */
      if (output != NULL)
         FUNC5(png_ptr, "Not enough image data");

      else /* the deflate stream contained extra data */
         FUNC1(png_ptr, "Too much image data");
   }
}
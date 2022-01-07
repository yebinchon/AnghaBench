
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef unsigned int png_uint_32 ;
typedef TYPE_1__* png_structrp ;
struct TYPE_17__ {int depth; int nentries; TYPE_3__* entries; scalar_t__ name; } ;
typedef TYPE_2__ png_sPLT_t ;
typedef TYPE_3__* png_sPLT_entryp ;
typedef int png_sPLT_entry ;
typedef int png_int_32 ;
typedef int png_inforp ;
typedef scalar_t__ png_charp ;
typedef scalar_t__* png_bytep ;
typedef int png_alloc_size_t ;
struct TYPE_18__ {void* frequency; void* alpha; void* blue; void* green; void* red; } ;
struct TYPE_16__ {int user_chunk_cache_max; int mode; } ;


 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_SIZE_MAX ;
 int png_chunk_benign_error (TYPE_1__*,char*) ;
 int png_chunk_error (TYPE_1__*,char*) ;
 scalar_t__ png_crc_finish (TYPE_1__*,unsigned int) ;
 int png_crc_read (TYPE_1__*,scalar_t__*,unsigned int) ;
 int png_debug (int,char*) ;
 int png_free (TYPE_1__*,TYPE_3__*) ;
 void* png_get_uint_16 (scalar_t__*) ;
 scalar_t__ png_malloc_warn (TYPE_1__*,int) ;
 scalar_t__* png_read_buffer (TYPE_1__*,unsigned int,int) ;
 int png_set_sPLT (TYPE_1__*,int ,TYPE_2__*,int) ;
 int png_warning (TYPE_1__*,char*) ;

void
png_handle_sPLT(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)

{
   png_bytep entry_start, buffer;
   png_sPLT_t new_palette;
   png_sPLT_entryp pp;
   png_uint_32 data_length;
   int entry_size, i;
   png_uint_32 skip = 0;
   png_uint_32 dl;
   size_t max_dl;

   png_debug(1, "in png_handle_sPLT");
   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      png_chunk_error(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & PNG_HAVE_IDAT) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of place");
      return;
   }
   buffer = png_read_buffer(png_ptr, length+1, 2 );
   if (buffer == ((void*)0))
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of memory");
      return;
   }






   png_crc_read(png_ptr, buffer, length);

   if (png_crc_finish(png_ptr, skip) != 0)
      return;

   buffer[length] = 0;

   for (entry_start = buffer; *entry_start; entry_start++)
                                           ;

   ++entry_start;


   if (length < 2U || entry_start > buffer + (length - 2U))
   {
      png_warning(png_ptr, "malformed sPLT chunk");
      return;
   }

   new_palette.depth = *entry_start++;
   entry_size = (new_palette.depth == 8 ? 6 : 10);



   data_length = length - (png_uint_32)(entry_start - buffer);


   if ((data_length % (unsigned int)entry_size) != 0)
   {
      png_warning(png_ptr, "sPLT chunk has bad length");
      return;
   }

   dl = (png_uint_32)(data_length / (unsigned int)entry_size);
   max_dl = PNG_SIZE_MAX / (sizeof (png_sPLT_entry));

   if (dl > max_dl)
   {
      png_warning(png_ptr, "sPLT chunk too long");
      return;
   }

   new_palette.nentries = (png_int_32)(data_length / (unsigned int)entry_size);

   new_palette.entries = (png_sPLT_entryp)png_malloc_warn(png_ptr,
       (png_alloc_size_t) new_palette.nentries * (sizeof (png_sPLT_entry)));

   if (new_palette.entries == ((void*)0))
   {
      png_warning(png_ptr, "sPLT chunk requires too much memory");
      return;
   }
   pp = new_palette.entries;

   for (i = 0; i < new_palette.nentries; i++)
   {

      if (new_palette.depth == 8)
      {
         pp[i].red = *entry_start++;
         pp[i].green = *entry_start++;
         pp[i].blue = *entry_start++;
         pp[i].alpha = *entry_start++;
      }

      else
      {
         pp[i].red = png_get_uint_16(entry_start); entry_start += 2;
         pp[i].green = png_get_uint_16(entry_start); entry_start += 2;
         pp[i].blue = png_get_uint_16(entry_start); entry_start += 2;
         pp[i].alpha = png_get_uint_16(entry_start); entry_start += 2;
      }

      pp[i].frequency = png_get_uint_16(entry_start); entry_start += 2;
   }



   new_palette.name = (png_charp)buffer;

   png_set_sPLT(png_ptr, info_ptr, &new_palette, 1);

   png_free(png_ptr, new_palette.entries);
}

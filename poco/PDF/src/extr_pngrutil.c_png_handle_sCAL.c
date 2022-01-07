
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef size_t png_size_t ;
typedef TYPE_2__* png_infop ;
typedef int* png_charp ;
typedef int png_bytep ;
struct TYPE_17__ {int valid; } ;
struct TYPE_16__ {int mode; } ;


 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_INFO_sCAL ;
 scalar_t__ png_crc_finish (TYPE_1__*,scalar_t__) ;
 int png_crc_read (TYPE_1__*,int ,size_t) ;
 int png_debug (int,char*) ;
 int png_debug1 (int,char*,scalar_t__) ;
 int png_error (TYPE_1__*,char*) ;
 int png_free (TYPE_1__*,int*) ;
 scalar_t__ png_malloc_warn (TYPE_1__*,scalar_t__) ;
 int png_memcpy (int*,int*,size_t) ;
 int png_set_sCAL (TYPE_1__*,TYPE_2__*,int,double,double) ;
 int png_set_sCAL_s (TYPE_1__*,TYPE_2__*,int,int*,int*) ;
 scalar_t__ png_strlen (int*) ;
 double png_strtod (TYPE_1__*,int*,int**) ;
 int png_warning (TYPE_1__*,char*) ;

void
png_handle_sCAL(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_charp buffer, ep;
   png_size_t slength;

   png_debug(1, "in png_handle_sCAL\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      png_error(png_ptr, "Missing IHDR before sCAL");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      png_warning(png_ptr, "Invalid sCAL after IDAT");
      png_crc_finish(png_ptr, length);
      return;
   }
   else if (info_ptr != ((void*)0) && (info_ptr->valid & PNG_INFO_sCAL))
   {
      png_warning(png_ptr, "Duplicate sCAL chunk");
      png_crc_finish(png_ptr, length);
      return;
   }

   png_debug1(2, "Allocating and reading sCAL chunk data (%lu bytes)\n",
      length + 1);
   buffer = (png_charp)png_malloc_warn(png_ptr, length + 1);
   if (buffer == ((void*)0))
     {
       png_warning(png_ptr, "Out of memory while processing sCAL chunk");
       return;
     }
   slength = (png_size_t)length;
   png_crc_read(png_ptr, (png_bytep)buffer, slength);

   if (png_crc_finish(png_ptr, 0))
   {
      png_free(png_ptr, buffer);
      return;
   }

   buffer[slength] = 0x00;

   ep = buffer + 1;
   for (ep = buffer; *ep; ep++)
                       ;
   ep++;

   if (buffer + slength < ep)
   {
       png_warning(png_ptr, "Truncated sCAL chunk");




      png_free(png_ptr, buffer);
       return;
   }
   if (buffer + slength < ep



      )
   {
      png_warning(png_ptr, "Invalid sCAL data");
      png_free(png_ptr, buffer);




      return;
   }
   png_free(png_ptr, buffer);




}

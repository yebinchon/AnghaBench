
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;


typedef scalar_t__ uInt ;
typedef TYPE_2__* png_structp ;
typedef int png_infop ;
typedef int png_byte ;
struct TYPE_35__ {int next_out; scalar_t__ avail_out; } ;
struct TYPE_36__ {int mode; int buffer_size; scalar_t__ push_length; scalar_t__ color_type; scalar_t__ idat_size; int chunk_name; int row_buf; TYPE_1__ zstream; scalar_t__ irowbytes; int process_mode; } ;
typedef int PNG_CONST ;


 int PNG_AFTER_IDAT ;
 scalar_t__ PNG_COLOR_TYPE_PALETTE ;
 int PNG_HAVE_CHUNK_AFTER_IDAT ;
 int PNG_HAVE_CHUNK_HEADER ;
 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_HAVE_PLTE ;
 int PNG_READ_DONE_MODE ;
 int PNG_READ_IDAT_MODE ;
 int png_IDAT ;
 int png_IEND ;
 int png_IHDR ;
 int png_PLTE ;
 int png_bKGD ;
 int png_cHRM ;
 int png_crc_read (TYPE_2__*,int ,int) ;
 int png_error (TYPE_2__*,char*) ;
 int png_gAMA ;
 scalar_t__ png_get_uint_31 (TYPE_2__*,int *) ;
 int png_hIST ;
 int png_handle_IEND (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_IHDR (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_PLTE (TYPE_2__*,int ,scalar_t__) ;
 scalar_t__ png_handle_as_unknown (TYPE_2__*,int ) ;
 int png_handle_bKGD (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_cHRM (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_gAMA (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_hIST (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_iCCP (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_oFFs (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_pCAL (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_pHYs (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_sBIT (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_sCAL (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_sPLT (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_sRGB (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_tIME (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_tRNS (TYPE_2__*,int ,scalar_t__) ;
 int png_handle_unknown (TYPE_2__*,int ,scalar_t__) ;
 int png_iCCP ;
 int png_iTXt ;
 int png_memcmp (int ,int ,int) ;
 int png_oFFs ;
 int png_pCAL ;
 int png_pHYs ;
 int png_push_fill_buffer (TYPE_2__*,int *,int) ;
 int png_push_handle_iTXt (TYPE_2__*,int ,scalar_t__) ;
 int png_push_handle_tEXt (TYPE_2__*,int ,scalar_t__) ;
 int png_push_handle_unknown (TYPE_2__*,int ,scalar_t__) ;
 int png_push_handle_zTXt (TYPE_2__*,int ,scalar_t__) ;
 int png_push_have_end (TYPE_2__*,int ) ;
 int png_push_have_info (TYPE_2__*,int ) ;
 int png_push_save_buffer (TYPE_2__*) ;
 int png_reset_crc (TYPE_2__*) ;
 int png_sBIT ;
 int png_sCAL ;
 int png_sPLT ;
 int png_sRGB ;
 int png_tEXt ;
 int png_tIME ;
 int png_tRNS ;
 int png_zTXt ;

void
png_push_read_chunk(png_structp png_ptr, png_infop info_ptr)
{
   if (!(png_ptr->mode & PNG_HAVE_CHUNK_HEADER))
   {
      png_byte chunk_length[4];

      if (png_ptr->buffer_size < 8)
      {
         png_push_save_buffer(png_ptr);
         return;
      }

      png_push_fill_buffer(png_ptr, chunk_length, 4);
      png_ptr->push_length = png_get_uint_31(png_ptr,chunk_length);
      png_reset_crc(png_ptr);
      png_crc_read(png_ptr, png_ptr->chunk_name, 4);
      png_ptr->mode |= PNG_HAVE_CHUNK_HEADER;
   }

   if (!png_memcmp(png_ptr->chunk_name, png_IDAT, 4))
     if(png_ptr->mode & PNG_AFTER_IDAT)
        png_ptr->mode |= PNG_HAVE_CHUNK_AFTER_IDAT;

   if (!png_memcmp(png_ptr->chunk_name, png_IHDR, 4))
   {
      if (png_ptr->push_length + 4 > png_ptr->buffer_size)
      {
         png_push_save_buffer(png_ptr);
         return;
      }
      png_handle_IHDR(png_ptr, info_ptr, png_ptr->push_length);
   }
   else if (!png_memcmp(png_ptr->chunk_name, png_IEND, 4))
   {
      if (png_ptr->push_length + 4 > png_ptr->buffer_size)
      {
         png_push_save_buffer(png_ptr);
         return;
      }
      png_handle_IEND(png_ptr, info_ptr, png_ptr->push_length);

      png_ptr->process_mode = PNG_READ_DONE_MODE;
      png_push_have_end(png_ptr, info_ptr);
   }
   else if (!png_memcmp(png_ptr->chunk_name, png_PLTE, 4))
   {
      if (png_ptr->push_length + 4 > png_ptr->buffer_size)
      {
         png_push_save_buffer(png_ptr);
         return;
      }
      png_handle_PLTE(png_ptr, info_ptr, png_ptr->push_length);
   }
   else if (!png_memcmp(png_ptr->chunk_name, png_IDAT, 4))
   {




     if (!(png_ptr->mode & PNG_HAVE_IHDR))
       png_error(png_ptr, "Missing IHDR before IDAT");
     else if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE &&
         !(png_ptr->mode & PNG_HAVE_PLTE))
       png_error(png_ptr, "Missing PLTE before IDAT");

      if (png_ptr->mode & PNG_HAVE_IDAT)
      {
         if (!(png_ptr->mode & PNG_HAVE_CHUNK_AFTER_IDAT))
           if (png_ptr->push_length == 0)
              return;

         if (png_ptr->mode & PNG_AFTER_IDAT)
            png_error(png_ptr, "Too many IDAT's found");
      }

      png_ptr->idat_size = png_ptr->push_length;
      png_ptr->mode |= PNG_HAVE_IDAT;
      png_ptr->process_mode = PNG_READ_IDAT_MODE;
      png_push_have_info(png_ptr, info_ptr);
      png_ptr->zstream.avail_out = (uInt)png_ptr->irowbytes;
      png_ptr->zstream.next_out = png_ptr->row_buf;
      return;
   }
   else
   {
      if (png_ptr->push_length + 4 > png_ptr->buffer_size)
      {
         png_push_save_buffer(png_ptr);
         return;
      }
      png_push_handle_unknown(png_ptr, info_ptr, png_ptr->push_length);
   }

   png_ptr->mode &= ~PNG_HAVE_CHUNK_HEADER;
}

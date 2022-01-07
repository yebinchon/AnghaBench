
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef int png_size_t ;
typedef int* png_bytep ;
typedef int png_byte ;
struct TYPE_5__ {int mode; scalar_t__ compression_type; int height; int width; int channels; int bit_depth; } ;


 scalar_t__ PNG_COMPRESSION_TYPE_BASE ;
 int PNG_HAVE_IDAT ;
 int PNG_IDAT ;
 int png_IDAT ;
 int png_debug (int,char*) ;
 int png_error (TYPE_1__*,char*) ;
 int png_write_chunk (TYPE_1__*,int ,int*,int) ;

void
png_write_IDAT(png_structp png_ptr, png_bytep data, png_size_t length)
{



   png_debug(1, "in png_write_IDAT\n");



   if (!(png_ptr->mode & PNG_HAVE_IDAT) &&
       png_ptr->compression_type == PNG_COMPRESSION_TYPE_BASE)
   {
      unsigned int z_cmf = data[0];
      if ((z_cmf & 0x0f) == 8 && (z_cmf & 0xf0) <= 0x70)
      {



         if (length >= 2 &&
             png_ptr->height < 16384 && png_ptr->width < 16384)
         {
            png_uint_32 uncompressed_idat_size = png_ptr->height *
               ((png_ptr->width *
               png_ptr->channels * png_ptr->bit_depth + 15) >> 3);
            unsigned int z_cinfo = z_cmf >> 4;
            unsigned int half_z_window_size = 1 << (z_cinfo + 7);
            while (uncompressed_idat_size <= half_z_window_size &&
                   half_z_window_size >= 256)
            {
               z_cinfo--;
               half_z_window_size >>= 1;
            }
            z_cmf = (z_cmf & 0x0f) | (z_cinfo << 4);
            if (data[0] != (png_byte)z_cmf)
            {
               data[0] = (png_byte)z_cmf;
               data[1] &= 0xe0;
               data[1] += (png_byte)(0x1f - ((z_cmf << 8) + data[1]) % 0x1f);
            }
         }
      }
      else
         png_error(png_ptr,
            "Invalid zlib compression method or flags in IDAT");
   }

   png_write_chunk(png_ptr, png_IDAT, data, length);
   png_ptr->mode |= PNG_HAVE_IDAT;
}

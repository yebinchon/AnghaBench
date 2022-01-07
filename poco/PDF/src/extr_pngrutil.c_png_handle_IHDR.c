
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef int png_infop ;
typedef void* png_byte ;
struct TYPE_8__ {int mode; int width; int height; int bit_depth; int color_type; int channels; int rowbytes; void* pixel_depth; void* compression_type; void* filter_type; void* interlaced; } ;







 int PNG_HAVE_IHDR ;
 int PNG_ROWBYTES (void*,int) ;
 int png_crc_finish (TYPE_1__*,int ) ;
 int png_crc_read (TYPE_1__*,void**,int) ;
 int png_debug (int,char*) ;
 int png_debug1 (int,char*,int) ;
 int png_error (TYPE_1__*,char*) ;
 int png_get_uint_31 (TYPE_1__*,void**) ;
 int png_set_IHDR (TYPE_1__*,int ,int,int,int,int,int,int,int) ;

void
png_handle_IHDR(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_byte buf[13];
   png_uint_32 width, height;
   int bit_depth, color_type, compression_type, filter_type;
   int interlace_type;

   png_debug(1, "in png_handle_IHDR\n");

   if (png_ptr->mode & PNG_HAVE_IHDR)
      png_error(png_ptr, "Out of place IHDR");


   if (length != 13)
      png_error(png_ptr, "Invalid IHDR chunk");

   png_ptr->mode |= PNG_HAVE_IHDR;

   png_crc_read(png_ptr, buf, 13);
   png_crc_finish(png_ptr, 0);

   width = png_get_uint_31(png_ptr, buf);
   height = png_get_uint_31(png_ptr, buf + 4);
   bit_depth = buf[8];
   color_type = buf[9];
   compression_type = buf[10];
   filter_type = buf[11];
   interlace_type = buf[12];


   png_ptr->width = width;
   png_ptr->height = height;
   png_ptr->bit_depth = (png_byte)bit_depth;
   png_ptr->interlaced = (png_byte)interlace_type;
   png_ptr->color_type = (png_byte)color_type;



   png_ptr->compression_type = (png_byte)compression_type;


   switch (png_ptr->color_type)
   {
      case 132:
      case 130:
         png_ptr->channels = 1;
         break;
      case 129:
         png_ptr->channels = 3;
         break;
      case 131:
         png_ptr->channels = 2;
         break;
      case 128:
         png_ptr->channels = 4;
         break;
   }


   png_ptr->pixel_depth = (png_byte)(png_ptr->bit_depth *
   png_ptr->channels);
   png_ptr->rowbytes = PNG_ROWBYTES(png_ptr->pixel_depth,png_ptr->width);
   png_debug1(3,"bit_depth = %d\n", png_ptr->bit_depth);
   png_debug1(3,"channels = %d\n", png_ptr->channels);
   png_debug1(3,"rowbytes = %lu\n", png_ptr->rowbytes);
   png_set_IHDR(png_ptr, info_ptr, width, height, bit_depth,
      color_type, interlace_type, compression_type, filter_type);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uLong ;
typedef scalar_t__ uInt ;
typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_structrp ;
typedef int png_const_bytep ;
struct TYPE_3__ {int flags; scalar_t__ crc; int chunk_name; } ;


 scalar_t__ PNG_CHUNK_ANCILLARY (int ) ;
 int PNG_FLAG_CRC_ANCILLARY_MASK ;
 int PNG_FLAG_CRC_ANCILLARY_NOWARN ;
 int PNG_FLAG_CRC_ANCILLARY_USE ;
 int PNG_FLAG_CRC_CRITICAL_IGNORE ;
 scalar_t__ crc32 (scalar_t__,int ,scalar_t__) ;

void
png_calculate_crc(png_structrp png_ptr, png_const_bytep ptr, size_t length)
{
   int need_crc = 1;

   if (PNG_CHUNK_ANCILLARY(png_ptr->chunk_name) != 0)
   {
      if ((png_ptr->flags & PNG_FLAG_CRC_ANCILLARY_MASK) ==
          (PNG_FLAG_CRC_ANCILLARY_USE | PNG_FLAG_CRC_ANCILLARY_NOWARN))
         need_crc = 0;
   }

   else
   {
      if ((png_ptr->flags & PNG_FLAG_CRC_CRITICAL_IGNORE) != 0)
         need_crc = 0;
   }






   if (need_crc != 0 && length > 0)
   {
      uLong crc = png_ptr->crc;

      do
      {
         uInt safe_length = (uInt)length;

         if (safe_length == 0)
            safe_length = (uInt)-1;


         crc = crc32(crc, ptr, safe_length);





         ptr += safe_length;
         length -= safe_length;
      }
      while (length > 0);


      png_ptr->crc = (png_uint_32)crc;
   }
}

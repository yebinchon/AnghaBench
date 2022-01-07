
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef int png_byte ;
struct TYPE_4__ {int* chunk_name; int flags; scalar_t__ crc; } ;


 int PNG_FLAG_CRC_ANCILLARY_MASK ;
 int PNG_FLAG_CRC_ANCILLARY_NOWARN ;
 int PNG_FLAG_CRC_ANCILLARY_USE ;
 int PNG_FLAG_CRC_CRITICAL_IGNORE ;
 scalar_t__ png_get_uint_32 (int *) ;
 int png_read_data (TYPE_1__*,int *,int) ;

int
png_crc_error(png_structp png_ptr)
{
   png_byte crc_bytes[4];
   png_uint_32 crc;
   int need_crc = 1;

   if (png_ptr->chunk_name[0] & 0x20)
   {
      if ((png_ptr->flags & PNG_FLAG_CRC_ANCILLARY_MASK) ==
          (PNG_FLAG_CRC_ANCILLARY_USE | PNG_FLAG_CRC_ANCILLARY_NOWARN))
         need_crc = 0;
   }
   else
   {
      if (png_ptr->flags & PNG_FLAG_CRC_CRITICAL_IGNORE)
         need_crc = 0;
   }

   png_read_data(png_ptr, crc_bytes, 4);

   if (need_crc)
   {
      crc = png_get_uint_32(crc_bytes);
      return ((int)(crc != png_ptr->crc));
   }
   else
      return (0);
}

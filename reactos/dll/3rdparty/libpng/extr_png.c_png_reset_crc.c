
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_structrp ;
struct TYPE_3__ {scalar_t__ crc; } ;


 int Z_NULL ;
 scalar_t__ crc32 (int ,int ,int ) ;

void
png_reset_crc(png_structrp png_ptr)
{

   png_ptr->crc = (png_uint_32)crc32(0, Z_NULL, 0);
}

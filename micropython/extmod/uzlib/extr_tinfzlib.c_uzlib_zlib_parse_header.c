
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checksum; int checksum_type; } ;
typedef TYPE_1__ TINF_DATA ;


 int TINF_CHKSUM_ADLER ;
 int TINF_DATA_ERROR ;
 unsigned char uzlib_get_byte (TYPE_1__*) ;

int uzlib_zlib_parse_header(TINF_DATA *d)
{
   unsigned char cmf, flg;



   cmf = uzlib_get_byte(d);
   flg = uzlib_get_byte(d);




   if ((256*cmf + flg) % 31) return TINF_DATA_ERROR;


   if ((cmf & 0x0f) != 8) return TINF_DATA_ERROR;


   if ((cmf >> 4) > 7) return TINF_DATA_ERROR;


   if (flg & 0x20) return TINF_DATA_ERROR;


   d->checksum_type = TINF_CHKSUM_ADLER;
   d->checksum = 1;

   return cmf >> 4;
}

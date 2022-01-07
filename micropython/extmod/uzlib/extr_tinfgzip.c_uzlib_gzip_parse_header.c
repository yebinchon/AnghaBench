
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int checksum; int checksum_type; } ;
typedef TYPE_1__ TINF_DATA ;


 unsigned char FCOMMENT ;
 unsigned char FEXTRA ;
 unsigned char FHCRC ;
 unsigned char FNAME ;
 int TINF_CHKSUM_CRC ;
 int TINF_DATA_ERROR ;
 int TINF_OK ;
 unsigned int tinf_get_uint16 (TYPE_1__*) ;
 int tinf_skip_bytes (TYPE_1__*,unsigned int) ;
 int uzlib_get_byte (TYPE_1__*) ;

int uzlib_gzip_parse_header(TINF_DATA *d)
{
    unsigned char flg;




    if (uzlib_get_byte(d) != 0x1f || uzlib_get_byte(d) != 0x8b) return TINF_DATA_ERROR;


    if (uzlib_get_byte(d) != 8) return TINF_DATA_ERROR;


    flg = uzlib_get_byte(d);


    if (flg & 0xe0) return TINF_DATA_ERROR;




    tinf_skip_bytes(d, 6);


    if (flg & FEXTRA)
    {
       unsigned int xlen = tinf_get_uint16(d);
       tinf_skip_bytes(d, xlen);
    }


    if (flg & FNAME) { while (uzlib_get_byte(d)); }


    if (flg & FCOMMENT) { while (uzlib_get_byte(d)); }


    if (flg & FHCRC)
    {
                               tinf_get_uint16(d);




    }


    d->checksum_type = TINF_CHKSUM_CRC;
    d->checksum = ~0;

    return TINF_OK;
}

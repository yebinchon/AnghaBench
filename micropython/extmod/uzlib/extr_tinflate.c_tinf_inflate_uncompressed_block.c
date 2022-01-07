
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ curlen; scalar_t__ bitcount; } ;
typedef TYPE_1__ TINF_DATA ;


 int TINF_DATA_ERROR ;
 int TINF_DONE ;
 int TINF_OK ;
 int TINF_PUT (TYPE_1__*,unsigned char) ;
 int uzlib_get_byte (TYPE_1__*) ;

__attribute__((used)) static int tinf_inflate_uncompressed_block(TINF_DATA *d)
{
    if (d->curlen == 0) {
        unsigned int length, invlength;


        length = uzlib_get_byte(d);
        length += 256 * uzlib_get_byte(d);

        invlength = uzlib_get_byte(d);
        invlength += 256 * uzlib_get_byte(d);

        if (length != (~invlength & 0x0000ffff)) return TINF_DATA_ERROR;



        d->curlen = length + 1;


        d->bitcount = 0;
    }

    if (--d->curlen == 0) {
        return TINF_DONE;
    }

    unsigned char c = uzlib_get_byte(d);
    TINF_PUT(d, c);
    return TINF_OK;
}

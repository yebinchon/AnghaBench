
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* c; } ;
typedef TYPE_1__ OCB_BLOCK ;


 int ocb_block_lshift (int*,int,int*) ;

__attribute__((used)) static void ocb_double(OCB_BLOCK *in, OCB_BLOCK *out)
{
    unsigned char mask;





    mask = in->c[0] & 0x80;
    mask >>= 7;
    mask = (0 - mask) & 0x87;

    ocb_block_lshift(in->c, 1, out->c);

    out->c[15] ^= mask;
}

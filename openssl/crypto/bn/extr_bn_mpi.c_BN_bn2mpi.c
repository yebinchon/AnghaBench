
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ l ;
struct TYPE_5__ {scalar_t__ neg; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_bn2bin (TYPE_1__ const*,unsigned char*) ;
 int BN_num_bits (TYPE_1__ const*) ;

int BN_bn2mpi(const BIGNUM *a, unsigned char *d)
{
    int bits;
    int num = 0;
    int ext = 0;
    long l;

    bits = BN_num_bits(a);
    num = (bits + 7) / 8;
    if (bits > 0) {
        ext = ((bits & 0x07) == 0);
    }
    if (d == ((void*)0))
        return (num + 4 + ext);

    l = num + ext;
    d[0] = (unsigned char)(l >> 24) & 0xff;
    d[1] = (unsigned char)(l >> 16) & 0xff;
    d[2] = (unsigned char)(l >> 8) & 0xff;
    d[3] = (unsigned char)(l) & 0xff;
    if (ext)
        d[4] = 0;
    num = BN_bn2bin(a, &(d[4 + ext]));
    if (a->neg)
        d[4] |= 0x80;
    return (num + 4 + ext);
}

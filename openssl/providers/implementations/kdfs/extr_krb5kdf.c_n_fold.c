
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,unsigned int) ;

__attribute__((used)) static void n_fold(unsigned char *block, unsigned int blocksize,
                   const unsigned char *constant, size_t constant_len)
{
    unsigned int tmp, gcd, remainder, lcm, carry;
    int b, l;

    if (constant_len == blocksize) {
        memcpy(block, constant, constant_len);
        return;
    }


    gcd = blocksize;
    remainder = constant_len;

    while (remainder != 0) {
        tmp = gcd % remainder;
        gcd = remainder;
        remainder = tmp;
    }

    lcm = blocksize * constant_len / gcd;


    memset(block, 0, blocksize);


    carry = 0;
    for (l = lcm - 1; l >= 0; l--) {
        unsigned int rotbits, rshift, rbyte;


        b = l % blocksize;


        rotbits = 13 * (l / constant_len);

        rbyte = l - (rotbits / 8);

        rshift = rotbits & 0x07;



        tmp = (constant[(rbyte-1) % constant_len] << (8 - rshift)
               | constant[rbyte % constant_len] >> rshift)
              & 0xff;

        tmp += carry + block[b];
        block[b] = tmp & 0xff;

        carry = tmp >> 8;
    }


    for (b = blocksize - 1; b >= 0 && carry != 0; b--) {
        carry += block[b];
        block[b] = carry & 0xff;
        carry >>= 8;
    }
}

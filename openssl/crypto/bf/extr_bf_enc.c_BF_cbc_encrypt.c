
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BF_LONG ;
typedef int BF_KEY ;


 int BF_decrypt (int*,int const*) ;
 int BF_encrypt (int*,int const*) ;
 int l2n (int,unsigned char*) ;
 int l2nn (int,int,unsigned char*,long) ;
 int n2l (unsigned char const*,int) ;
 int n2ln (unsigned char const*,int,int,long) ;

void BF_cbc_encrypt(const unsigned char *in, unsigned char *out, long length,
                    const BF_KEY *schedule, unsigned char *ivec, int encrypt)
{
    register BF_LONG tin0, tin1;
    register BF_LONG tout0, tout1, xor0, xor1;
    register long l = length;
    BF_LONG tin[2];

    if (encrypt) {
        n2l(ivec, tout0);
        n2l(ivec, tout1);
        ivec -= 8;
        for (l -= 8; l >= 0; l -= 8) {
            n2l(in, tin0);
            n2l(in, tin1);
            tin0 ^= tout0;
            tin1 ^= tout1;
            tin[0] = tin0;
            tin[1] = tin1;
            BF_encrypt(tin, schedule);
            tout0 = tin[0];
            tout1 = tin[1];
            l2n(tout0, out);
            l2n(tout1, out);
        }
        if (l != -8) {
            n2ln(in, tin0, tin1, l + 8);
            tin0 ^= tout0;
            tin1 ^= tout1;
            tin[0] = tin0;
            tin[1] = tin1;
            BF_encrypt(tin, schedule);
            tout0 = tin[0];
            tout1 = tin[1];
            l2n(tout0, out);
            l2n(tout1, out);
        }
        l2n(tout0, ivec);
        l2n(tout1, ivec);
    } else {
        n2l(ivec, xor0);
        n2l(ivec, xor1);
        ivec -= 8;
        for (l -= 8; l >= 0; l -= 8) {
            n2l(in, tin0);
            n2l(in, tin1);
            tin[0] = tin0;
            tin[1] = tin1;
            BF_decrypt(tin, schedule);
            tout0 = tin[0] ^ xor0;
            tout1 = tin[1] ^ xor1;
            l2n(tout0, out);
            l2n(tout1, out);
            xor0 = tin0;
            xor1 = tin1;
        }
        if (l != -8) {
            n2l(in, tin0);
            n2l(in, tin1);
            tin[0] = tin0;
            tin[1] = tin1;
            BF_decrypt(tin, schedule);
            tout0 = tin[0] ^ xor0;
            tout1 = tin[1] ^ xor1;
            l2nn(tout0, tout1, out, l + 8);
            xor0 = tin0;
            xor1 = tin1;
        }
        l2n(xor0, ivec);
        l2n(xor1, ivec);
    }
    tin0 = tin1 = tout0 = tout1 = xor0 = xor1 = 0;
    tin[0] = tin[1] = 0;
}

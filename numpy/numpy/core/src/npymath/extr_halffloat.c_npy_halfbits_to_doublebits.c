
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint64 ;
typedef int npy_uint16 ;



npy_uint64 npy_halfbits_to_doublebits(npy_uint16 h)
{
    npy_uint16 h_exp, h_sig;
    npy_uint64 d_sgn, d_exp, d_sig;

    h_exp = (h&0x7c00u);
    d_sgn = ((npy_uint64)h&0x8000u) << 48;
    switch (h_exp) {
        case 0x0000u:
            h_sig = (h&0x03ffu);

            if (h_sig == 0) {
                return d_sgn;
            }

            h_sig <<= 1;
            while ((h_sig&0x0400u) == 0) {
                h_sig <<= 1;
                h_exp++;
            }
            d_exp = ((npy_uint64)(1023 - 15 - h_exp)) << 52;
            d_sig = ((npy_uint64)(h_sig&0x03ffu)) << 42;
            return d_sgn + d_exp + d_sig;
        case 0x7c00u:

            return d_sgn + 0x7ff0000000000000ULL +
                                (((npy_uint64)(h&0x03ffu)) << 42);
        default:

            return d_sgn + (((npy_uint64)(h&0x7fffu) + 0xfc000u) << 42);
    }
}

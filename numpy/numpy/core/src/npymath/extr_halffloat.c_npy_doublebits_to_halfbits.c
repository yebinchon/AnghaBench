
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint64 ;
typedef int npy_uint16 ;


 int assert (int) ;
 int npy_set_floatstatus_overflow () ;
 int npy_set_floatstatus_underflow () ;

npy_uint16 npy_doublebits_to_halfbits(npy_uint64 d)
{
    npy_uint64 d_exp, d_sig;
    npy_uint16 h_sgn, h_exp, h_sig;

    h_sgn = (d&0x8000000000000000ULL) >> 48;
    d_exp = (d&0x7ff0000000000000ULL);


    if (d_exp >= 0x40f0000000000000ULL) {
        if (d_exp == 0x7ff0000000000000ULL) {

            d_sig = (d&0x000fffffffffffffULL);
            if (d_sig != 0) {

                npy_uint16 ret = (npy_uint16) (0x7c00u + (d_sig >> 42));

                if (ret == 0x7c00u) {
                    ret++;
                }
                return h_sgn + ret;
            } else {

                return h_sgn + 0x7c00u;
            }
        } else {




            return h_sgn + 0x7c00u;
        }
    }


    if (d_exp <= 0x3f00000000000000ULL) {




        if (d_exp < 0x3e60000000000000ULL) {






            return h_sgn;
        }

        d_exp >>= 52;
        d_sig = (0x0010000000000000ULL + (d&0x000fffffffffffffULL));
        assert(d_exp - 998 >= 0);
        d_sig <<= (d_exp - 998);
        d_sig += 0x0010000000000000ULL;

        h_sig = (npy_uint16) (d_sig >> 53);





        return h_sgn + h_sig;
    }


    h_exp = (npy_uint16) ((d_exp - 0x3f00000000000000ULL) >> 42);

    d_sig = (d&0x000fffffffffffffULL);
    d_sig += 0x0000020000000000ULL;

    h_sig = (npy_uint16) (d_sig >> 42);
    return h_sgn + h_exp + h_sig;

}

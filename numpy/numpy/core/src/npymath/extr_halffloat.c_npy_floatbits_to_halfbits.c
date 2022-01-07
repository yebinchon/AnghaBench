
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;
typedef int npy_uint16 ;


 int npy_set_floatstatus_overflow () ;
 int npy_set_floatstatus_underflow () ;

npy_uint16 npy_floatbits_to_halfbits(npy_uint32 f)
{
    npy_uint32 f_exp, f_sig;
    npy_uint16 h_sgn, h_exp, h_sig;

    h_sgn = (npy_uint16) ((f&0x80000000u) >> 16);
    f_exp = (f&0x7f800000u);


    if (f_exp >= 0x47800000u) {
        if (f_exp == 0x7f800000u) {

            f_sig = (f&0x007fffffu);
            if (f_sig != 0) {

                npy_uint16 ret = (npy_uint16) (0x7c00u + (f_sig >> 13));

                if (ret == 0x7c00u) {
                    ret++;
                }
                return h_sgn + ret;
            } else {

                return (npy_uint16) (h_sgn + 0x7c00u);
            }
        } else {




            return (npy_uint16) (h_sgn + 0x7c00u);
        }
    }


    if (f_exp <= 0x38000000u) {




        if (f_exp < 0x33000000u) {






            return h_sgn;
        }

        f_exp >>= 23;
        f_sig = (0x00800000u + (f&0x007fffffu));
        f_sig >>= (113 - f_exp);
        f_sig += 0x00001000u;

        h_sig = (npy_uint16) (f_sig >> 13);





        return (npy_uint16) (h_sgn + h_sig);
    }


    h_exp = (npy_uint16) ((f_exp - 0x38000000u) >> 13);

    f_sig = (f&0x007fffffu);
    f_sig += 0x00001000u;

    h_sig = (npy_uint16) (f_sig >> 13);
    return h_sgn + h_exp + h_sig;

}

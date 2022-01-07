
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void const* X (int) ;
 void const* Y (int) ;
 void* Z (int) ;
 void const* tmp_felem (int) ;

void ec_GFp_nistp_points_make_affine_internal(size_t num, void *point_array,
                                              size_t felem_size,
                                              void *tmp_felems,
                                              void (*felem_one) (void *out),
                                              int (*felem_is_zero) (const void
                                                                    *in),
                                              void (*felem_assign) (void *out,
                                                                    const void
                                                                    *in),
                                              void (*felem_square) (void *out,
                                                                    const void
                                                                    *in),
                                              void (*felem_mul) (void *out,
                                                                 const void
                                                                 *in1,
                                                                 const void
                                                                 *in2),
                                              void (*felem_inv) (void *out,
                                                                 const void
                                                                 *in),
                                              void (*felem_contract) (void
                                                                      *out,
                                                                      const
                                                                      void
                                                                      *in))
{
    int i = 0;






    if (!felem_is_zero((&((char *)point_array)[(3*(0) + 2) * felem_size])))
        felem_assign((&((char *)tmp_felems)[(0) * felem_size]), (&((char *)point_array)[(3*(0) + 2) * felem_size]));
    else
        felem_one((&((char *)tmp_felems)[(0) * felem_size]));
    for (i = 1; i < (int)num; i++) {
        if (!felem_is_zero((&((char *)point_array)[(3*(i) + 2) * felem_size])))
            felem_mul((&((char *)tmp_felems)[(i) * felem_size]), (&((char *)tmp_felems)[(i - 1) * felem_size]), (&((char *)point_array)[(3*(i) + 2) * felem_size]));
        else
            felem_assign((&((char *)tmp_felems)[(i) * felem_size]), (&((char *)tmp_felems)[(i - 1) * felem_size]));
    }





    felem_inv((&((char *)tmp_felems)[(num - 1) * felem_size]), (&((char *)tmp_felems)[(num - 1) * felem_size]));
    for (i = num - 1; i >= 0; i--) {
        if (i > 0)





            felem_mul((&((char *)tmp_felems)[(num) * felem_size]), (&((char *)tmp_felems)[(i - 1) * felem_size]), (&((char *)tmp_felems)[(i) * felem_size]));
        else
            felem_assign((&((char *)tmp_felems)[(num) * felem_size]), (&((char *)tmp_felems)[(0) * felem_size]));

        if (!felem_is_zero((&((char *)point_array)[(3*(i) + 2) * felem_size]))) {
            if (i > 0)



                felem_mul((&((char *)tmp_felems)[(i - 1) * felem_size]), (&((char *)tmp_felems)[(i) * felem_size]), (&((char *)point_array)[(3*(i) + 2) * felem_size]));




            felem_square((&((char *)point_array)[(3*(i) + 2) * felem_size]), (&((char *)tmp_felems)[(num) * felem_size]));
            felem_mul((&((char *)point_array)[3*(i) * felem_size]), (&((char *)point_array)[3*(i) * felem_size]), (&((char *)point_array)[(3*(i) + 2) * felem_size]));
            felem_mul((&((char *)point_array)[(3*(i) + 2) * felem_size]), (&((char *)point_array)[(3*(i) + 2) * felem_size]), (&((char *)tmp_felems)[(num) * felem_size]));
            felem_mul((&((char *)point_array)[(3*(i) + 1) * felem_size]), (&((char *)point_array)[(3*(i) + 1) * felem_size]), (&((char *)point_array)[(3*(i) + 2) * felem_size]));
            felem_contract((&((char *)point_array)[3*(i) * felem_size]), (&((char *)point_array)[3*(i) * felem_size]));
            felem_contract((&((char *)point_array)[(3*(i) + 1) * felem_size]), (&((char *)point_array)[(3*(i) + 1) * felem_size]));
            felem_one((&((char *)point_array)[(3*(i) + 2) * felem_size]));
        } else {
            if (i > 0)



                felem_assign((&((char *)tmp_felems)[(i - 1) * felem_size]), (&((char *)tmp_felems)[(i) * felem_size]));
        }
    }
}

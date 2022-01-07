
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int felem ;


 int ec_GFp_nistp_points_make_affine_internal (size_t,int **,int,int *,void (*) (void*),int ,void (*) (void*,void const*),void (*) (void*,void const*),void (*) (void*,void const*,void const*),void (*) (void*,void const*),void (*) (void*,void const*)) ;
 scalar_t__ felem_assign ;
 scalar_t__ felem_contract ;
 scalar_t__ felem_inv ;
 int felem_is_zero_int ;
 scalar_t__ felem_mul_reduce ;
 scalar_t__ felem_one ;
 scalar_t__ felem_square_reduce ;

__attribute__((used)) static void make_points_affine(size_t num, felem points[][3],
                               felem tmp_felems[])
{




    ec_GFp_nistp_points_make_affine_internal(num,
                                             points,
                                             sizeof(felem),
                                             tmp_felems,
                                             (void (*)(void *))felem_one,
                                             felem_is_zero_int,
                                             (void (*)(void *, const void *))
                                             felem_assign,
                                             (void (*)(void *, const void *))
                                             felem_square_reduce, (void (*)
                                                                   (void *,
                                                                    const void
                                                                    *,
                                                                    const void
                                                                    *))
                                             felem_mul_reduce,
                                             (void (*)(void *, const void *))
                                             felem_inv,
                                             (void (*)(void *, const void *))
                                             felem_contract);
}

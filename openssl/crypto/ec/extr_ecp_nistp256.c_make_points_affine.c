
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smallfelem ;


 int ec_GFp_nistp_points_make_affine_internal (size_t,int **,int,int *,void (*) (void*),int ,void (*) (void*,void const*),void (*) (void*,void const*),void (*) (void*,void const*,void const*),void (*) (void*,void const*),void (*) (void*,void const*)) ;
 scalar_t__ smallfelem_assign ;
 scalar_t__ smallfelem_inv_contract ;
 int smallfelem_is_zero_int ;
 scalar_t__ smallfelem_mul_contract ;
 scalar_t__ smallfelem_one ;
 scalar_t__ smallfelem_square_contract ;

__attribute__((used)) static void make_points_affine(size_t num, smallfelem points[][3],
                               smallfelem tmp_smallfelems[])
{




    ec_GFp_nistp_points_make_affine_internal(num,
                                             points,
                                             sizeof(smallfelem),
                                             tmp_smallfelems,
                                             (void (*)(void *))smallfelem_one,
                                             smallfelem_is_zero_int,
                                             (void (*)(void *, const void *))
                                             smallfelem_assign,
                                             (void (*)(void *, const void *))
                                             smallfelem_square_contract,
                                             (void (*)
                                              (void *, const void *,
                                               const void *))
                                             smallfelem_mul_contract,
                                             (void (*)(void *, const void *))
                                             smallfelem_inv_contract,

                                             (void (*)(void *, const void *))
                                             smallfelem_assign);
}

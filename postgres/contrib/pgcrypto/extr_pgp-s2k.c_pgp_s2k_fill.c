
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int mode; int digest_algo; int iter; int * salt; } ;
typedef TYPE_1__ PGP_S2K ;



 int PGP_S2K_SALT ;


 int PXE_NO_RANDOM ;
 int PXE_PGP_BAD_S2K_MODE ;
 int decide_s2k_iter (int ,int) ;
 int pg_strong_random (int *,int) ;

int
pgp_s2k_fill(PGP_S2K *s2k, int mode, int digest_algo, int count)
{
 int res = 0;
 uint8 tmp;

 s2k->mode = mode;
 s2k->digest_algo = digest_algo;

 switch (s2k->mode)
 {
  case 128:
   break;
  case 129:
   if (!pg_strong_random(s2k->salt, PGP_S2K_SALT))
    return PXE_NO_RANDOM;
   break;
  case 130:
   if (!pg_strong_random(s2k->salt, PGP_S2K_SALT))
    return PXE_NO_RANDOM;
   if (!pg_strong_random(&tmp, 1))
    return PXE_NO_RANDOM;
   s2k->iter = decide_s2k_iter(tmp, count);
   break;
  default:
   res = PXE_PGP_BAD_S2K_MODE;
 }
 return res;
}

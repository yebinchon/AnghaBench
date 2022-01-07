
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_half ;


 int npy_half_isnan (int) ;

int npy_half_eq(npy_half h1, npy_half h2)
{






    return (!npy_half_isnan(h1) && !npy_half_isnan(h2)) &&
           (h1 == h2 || ((h1 | h2) & 0x7fff) == 0);
}

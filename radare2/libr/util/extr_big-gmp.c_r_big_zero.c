
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RNumBig ;


 int mpz_init (int ) ;

__attribute__((used)) static inline void r_big_zero(RNumBig *n) {
 mpz_init (*n);
}

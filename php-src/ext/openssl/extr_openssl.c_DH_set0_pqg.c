
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * g; int * q; int * p; } ;
typedef TYPE_1__ DH ;
typedef int BIGNUM ;



__attribute__((used)) static int DH_set0_pqg(DH *dh, BIGNUM *p, BIGNUM *q, BIGNUM *g)
{
 dh->p = p;
 dh->q = q;
 dh->g = g;

 return 1;
}

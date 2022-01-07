
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * d; int * e; int * n; } ;
typedef TYPE_1__ RSA ;
typedef int BIGNUM ;



__attribute__((used)) static void RSA_get0_key(const RSA *r, const BIGNUM **n, const BIGNUM **e, const BIGNUM **d)
{
 *n = r->n;
 *e = r->e;
 *d = r->d;
}

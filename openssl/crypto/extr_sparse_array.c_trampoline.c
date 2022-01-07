
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trampoline_st {int (* func ) (int ,void*) ;} ;
typedef int ossl_uintmax_t ;


 int stub1 (int ,void*) ;

__attribute__((used)) static void trampoline(ossl_uintmax_t n, void *l, void *arg)
{
    ((const struct trampoline_st *)arg)->func(n, l);
}

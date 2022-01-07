
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nelem; } ;
typedef TYPE_1__ OPENSSL_SA ;



size_t OPENSSL_SA_num(const OPENSSL_SA *sa)
{
    return sa == ((void*)0) ? 0 : sa->nelem;
}

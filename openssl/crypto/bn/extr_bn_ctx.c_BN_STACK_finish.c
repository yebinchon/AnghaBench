
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * indexes; } ;
typedef TYPE_1__ BN_STACK ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void BN_STACK_finish(BN_STACK *st)
{
    OPENSSL_free(st->indexes);
    st->indexes = ((void*)0);
}

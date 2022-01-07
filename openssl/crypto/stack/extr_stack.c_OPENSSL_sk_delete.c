
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num; } ;
typedef TYPE_1__ OPENSSL_STACK ;


 void* internal_delete (TYPE_1__*,int) ;

void *OPENSSL_sk_delete(OPENSSL_STACK *st, int loc)
{
    if (st == ((void*)0) || loc < 0 || loc >= st->num)
        return ((void*)0);

    return internal_delete(st, loc);
}

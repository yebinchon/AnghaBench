
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* add ) (void const*,int,double) ;} ;
typedef TYPE_1__ RAND_METHOD ;


 TYPE_1__* RAND_get_rand_method () ;
 int stub1 (void const*,int,double) ;

void RAND_add(const void *buf, int num, double randomness)
{
    const RAND_METHOD *meth = RAND_get_rand_method();

    if (meth->add != ((void*)0))
        meth->add(buf, num, randomness);
}

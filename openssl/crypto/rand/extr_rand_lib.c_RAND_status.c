
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* status ) () ;} ;
typedef TYPE_1__ RAND_METHOD ;


 TYPE_1__* RAND_get_rand_method () ;
 int stub1 () ;

int RAND_status(void)
{
    const RAND_METHOD *meth = RAND_get_rand_method();

    if (meth->status != ((void*)0))
        return meth->status();
    return 0;
}

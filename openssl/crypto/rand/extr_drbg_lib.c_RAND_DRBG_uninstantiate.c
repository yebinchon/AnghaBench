
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; int type; TYPE_1__* meth; int state; } ;
struct TYPE_6__ {int (* uninstantiate ) (TYPE_2__*) ;} ;
typedef TYPE_2__ RAND_DRBG ;


 int DRBG_ERROR ;
 int RAND_DRBG_FLAG_MASTER ;
 int RAND_DRBG_FLAG_PRIVATE ;
 int RAND_DRBG_FLAG_PUBLIC ;
 int RAND_DRBG_TYPE_MASTER ;
 int RAND_DRBG_TYPE_PRIVATE ;
 int RAND_DRBG_TYPE_PUBLIC ;
 int RAND_DRBG_set (TYPE_2__*,int,int) ;
 int RAND_F_RAND_DRBG_UNINSTANTIATE ;
 int RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED ;
 int RANDerr (int ,int ) ;
 int* rand_drbg_flags ;
 int* rand_drbg_type ;
 int stub1 (TYPE_2__*) ;

int RAND_DRBG_uninstantiate(RAND_DRBG *drbg)
{
    int index = -1, type, flags;
    if (drbg->meth == ((void*)0)) {
        drbg->state = DRBG_ERROR;
        RANDerr(RAND_F_RAND_DRBG_UNINSTANTIATE,
                RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED);
        return 0;
    }





    drbg->meth->uninstantiate(drbg);


    if (drbg->flags & RAND_DRBG_FLAG_MASTER)
        index = RAND_DRBG_TYPE_MASTER;
    else if (drbg->flags & RAND_DRBG_FLAG_PRIVATE)
        index = RAND_DRBG_TYPE_PRIVATE;
    else if (drbg->flags & RAND_DRBG_FLAG_PUBLIC)
        index = RAND_DRBG_TYPE_PUBLIC;

    if (index != -1) {
        flags = rand_drbg_flags[index];
        type = rand_drbg_type[index];
    } else {
        flags = drbg->flags;
        type = drbg->type;
    }
    return RAND_DRBG_set(drbg, type, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ DSA_METHOD ;



int DSA_meth_set_flags(DSA_METHOD *dsam, int flags)
{
    dsam->flags = flags;
    return 1;
}

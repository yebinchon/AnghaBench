
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long flags; } ;
typedef TYPE_1__ BUF_MEM ;


 TYPE_1__* BUF_MEM_new () ;

BUF_MEM *BUF_MEM_new_ex(unsigned long flags)
{
    BUF_MEM *ret;

    ret = BUF_MEM_new();
    if (ret != ((void*)0))
        ret->flags = flags;
    return ret;
}

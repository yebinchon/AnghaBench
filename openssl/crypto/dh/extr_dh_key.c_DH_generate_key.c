
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* generate_key ) (TYPE_2__*) ;} ;
typedef TYPE_2__ DH ;


 int stub1 (TYPE_2__*) ;

int DH_generate_key(DH *dh)
{
    return dh->meth->generate_key(dh);
}

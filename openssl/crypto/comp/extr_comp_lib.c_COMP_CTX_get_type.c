
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* meth; } ;
struct TYPE_4__ {int type; } ;
typedef TYPE_2__ COMP_CTX ;


 int NID_undef ;

int COMP_CTX_get_type(const COMP_CTX* comp)
{
    return comp->meth ? comp->meth->type : NID_undef;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* cb_2 ) (int,int,TYPE_2__*) ;} ;
struct TYPE_7__ {int ver; TYPE_1__ cb; void* arg; } ;
typedef TYPE_2__ BN_GENCB ;



void BN_GENCB_set(BN_GENCB *gencb, int (*callback) (int, int, BN_GENCB *),
                  void *cb_arg)
{
    BN_GENCB *tmp_gencb = gencb;
    tmp_gencb->ver = 2;
    tmp_gencb->arg = cb_arg;
    tmp_gencb->cb.cb_2 = callback;
}

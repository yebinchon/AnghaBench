
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double timestamp; scalar_t__ cc_size; } ;
typedef TYPE_1__ scc_t ;


 TYPE_1__* scc_relloc (int ,int) ;

scc_t* scc_new(int cc_count)
{
    scc_t* scc = scc_relloc(0, cc_count);
    scc->timestamp = 0.0;
    scc->cc_size = 0;
    return scc;
}

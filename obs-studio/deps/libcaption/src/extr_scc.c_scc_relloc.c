
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {unsigned int cc_aloc; } ;
typedef TYPE_1__ scc_t ;


 scalar_t__ realloc (TYPE_1__*,int) ;

__attribute__((used)) static scc_t* scc_relloc(scc_t* scc, unsigned int cc_count)
{
    if (0 == scc || scc->cc_aloc < cc_count) {

        scc = (scc_t*)realloc(scc, sizeof(scc_t) + ((cc_count * 15 / 10) * sizeof(uint16_t)));
        scc->cc_aloc = cc_count;
    }

    return scc;
}

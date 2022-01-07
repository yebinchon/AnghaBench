
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rrdset; int * values; } ;
struct TYPE_4__ {size_t current_entry; } ;
typedef TYPE_2__ RRDDIM ;


 int SN_EMPTY_SLOT ;

__attribute__((used)) static void rrddim_collect_init(RRDDIM *rd) {
    rd->values[rd->rrdset->current_entry] = SN_EMPTY_SLOT;
}

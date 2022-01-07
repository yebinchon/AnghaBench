
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rel_reg; } ;
struct instruction {TYPE_2__* src; TYPE_1__ dst; scalar_t__ has_predicate; } ;
struct TYPE_4__ {scalar_t__ rel_reg; } ;
typedef unsigned int DWORD ;



__attribute__((used)) static DWORD instrlen(const struct instruction *instr, unsigned int srcs, unsigned int dsts) {
    unsigned int i;
    DWORD ret = srcs + dsts + (instr->has_predicate ? 1 : 0);

    if(dsts){
        if(instr->dst.rel_reg) ret++;
    }
    for(i = 0; i < srcs; i++) {
        if(instr->src[i].rel_reg) ret++;
    }
    return ret;
}

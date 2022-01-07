
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct interrupt {char* name; TYPE_1__* cpu; int * rd; } ;
struct TYPE_2__ {int * rd; } ;


 struct interrupt* irrindex (struct interrupt*,size_t,int) ;
 scalar_t__ reallocz (struct interrupt*,size_t) ;
 size_t recordsize (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct interrupt *get_interrupts_array(size_t lines, int cpus) {
    static struct interrupt *irrs = ((void*)0);
    static size_t allocated = 0;

    if(unlikely(lines != allocated)) {
        uint32_t l;
        int c;

        irrs = (struct interrupt *)reallocz(irrs, lines * recordsize(cpus));


        for(l = 0; l < lines ;l++) {
            struct interrupt *irr = irrindex(irrs, l, cpus);
            irr->rd = ((void*)0);
            irr->name[0] = '\0';
            for(c = 0; c < cpus ;c++)
                irr->cpu[c].rd = ((void*)0);
        }

        allocated = lines;
    }

    return irrs;
}

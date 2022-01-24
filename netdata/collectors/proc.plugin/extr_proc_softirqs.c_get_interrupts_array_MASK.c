#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct interrupt {char* name; TYPE_1__* cpu; int /*<<< orphan*/ * rd; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rd; } ;

/* Variables and functions */
 struct interrupt* FUNC0 (struct interrupt*,size_t,int) ; 
 scalar_t__ FUNC1 (struct interrupt*,size_t) ; 
 size_t FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline struct interrupt *FUNC4(size_t lines, int cpus) {
    static struct interrupt *irrs = NULL;
    static size_t allocated = 0;

    if(FUNC3(lines != allocated)) {
        uint32_t l;
        int c;

        irrs = (struct interrupt *)FUNC1(irrs, lines * FUNC2(cpus));

        // reset all interrupt RRDDIM pointers as any line could have shifted
        for(l = 0; l < lines ;l++) {
            struct interrupt *irr = FUNC0(irrs, l, cpus);
            irr->rd = NULL;
            irr->name[0] = '\0';
            for(c = 0; c < cpus ;c++)
                irr->cpu[c].rd = NULL;
        }

        allocated = lines;
    }

    return irrs;
}
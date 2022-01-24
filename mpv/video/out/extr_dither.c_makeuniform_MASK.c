#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ctx {unsigned int size2; unsigned int* unimat; } ;
typedef  unsigned int index_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctx*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct ctx *k)
{
    unsigned int size2 = k->size2;
    for (index_t c = 0; c < size2; c++) {
        index_t r = FUNC0(k);
        FUNC1(k, r);
        k->unimat[r] = c;
    }
}
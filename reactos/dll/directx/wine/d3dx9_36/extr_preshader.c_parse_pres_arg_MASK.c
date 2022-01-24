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
struct TYPE_2__ {scalar_t__ table; int offset; } ;
struct d3dx_pres_operand {TYPE_1__ reg; TYPE_1__ index_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 scalar_t__ PRES_REGTAB_COUNT ; 
 scalar_t__ PRES_REGTAB_OBCONST ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 unsigned int* FUNC2 (unsigned int*,TYPE_1__*) ; 

__attribute__((used)) static unsigned int *FUNC3(unsigned int *ptr, unsigned int count, struct d3dx_pres_operand *opr)
{
    if (count < 3 || (*ptr && count < 5))
    {
        FUNC1("Byte code buffer ends unexpectedly, count %u.\n", count);
        return NULL;
    }

    if (*ptr)
    {
        if (*ptr != 1)
        {
            FUNC0("Unknown relative addressing flag, word %#x.\n", *ptr);
            return NULL;
        }
        ptr = FUNC2(ptr + 1, &opr->index_reg);
        if (!ptr)
            return NULL;
    }
    else
    {
        opr->index_reg.table = PRES_REGTAB_COUNT;
        ++ptr;
    }

    ptr = FUNC2(ptr, &opr->reg);

    if (opr->reg.table == PRES_REGTAB_OBCONST)
        opr->reg.offset /= 4;
    return ptr;
}
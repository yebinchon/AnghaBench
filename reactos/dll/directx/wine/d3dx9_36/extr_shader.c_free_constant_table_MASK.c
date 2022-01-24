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
struct TYPE_2__ {size_t Constants; } ;
struct ID3DXConstantTableImpl {int /*<<< orphan*/ * ctab; int /*<<< orphan*/ * constants; TYPE_1__ desc; } ;
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ID3DXConstantTableImpl *table)
{
    if (table->constants)
    {
        UINT i;

        for (i = 0; i < table->desc.Constants; ++i)
        {
            FUNC2(&table->constants[i]);
        }
        FUNC1(FUNC0(), 0, table->constants);
    }
    FUNC1(FUNC0(), 0, table->ctab);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sponge; } ;
typedef  TYPE_1__ Keccak_HashInstance ;
typedef  int /*<<< orphan*/  HashReturn ;
typedef  int DataLength ;
typedef  int /*<<< orphan*/  BitSequence ;

/* Variables and functions */
 int /*<<< orphan*/  FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

HashReturn FUNC1(Keccak_HashInstance *instance, BitSequence *data, DataLength databitlen)
{
    if ((databitlen % 8) != 0)
        return FAIL;
    return (HashReturn)FUNC0(&instance->sponge, data, databitlen/8);
}
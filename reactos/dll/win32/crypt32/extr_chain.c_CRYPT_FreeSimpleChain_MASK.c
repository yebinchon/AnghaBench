#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t cElement; struct TYPE_5__* rgpElement; } ;
typedef  TYPE_1__* PCERT_SIMPLE_CHAIN ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(PCERT_SIMPLE_CHAIN chain)
{
    DWORD i;

    for (i = 0; i < chain->cElement; i++)
        FUNC0(chain->rgpElement[i]);
    FUNC1(chain->rgpElement);
    FUNC1(chain);
}
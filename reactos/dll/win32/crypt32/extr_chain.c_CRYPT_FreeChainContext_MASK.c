#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t cChain; TYPE_2__* rgpChain; } ;
struct TYPE_8__ {int /*<<< orphan*/  world; TYPE_1__ context; } ;
typedef  size_t DWORD ;
typedef  TYPE_2__ CertificateChain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(CertificateChain *chain)
{
    DWORD i;

    FUNC0(chain);
    for (i = 0; i < chain->context.cChain; i++)
        FUNC1(chain->context.rgpChain[i]);
    FUNC3(chain->context.rgpChain);
    FUNC2(chain->world, 0);
    FUNC3(chain);
}
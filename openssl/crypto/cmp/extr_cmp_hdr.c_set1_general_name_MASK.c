#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_6__ {int /*<<< orphan*/ * directoryName; } ;
struct TYPE_7__ {TYPE_1__ d; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ GENERAL_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  GEN_DIRNAME ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(GENERAL_NAME **tgt, const X509_NAME *src)
{
    GENERAL_NAME *gen;

    if (!FUNC4(tgt != NULL))
        return 0;
    if ((gen = FUNC1()) == NULL)
        goto err;
    gen->type = GEN_DIRNAME;

    if (src == NULL) { /* NULL-DN */
        if ((gen->d.directoryName = FUNC2()) == NULL)
            goto err;
    } else if (!FUNC3(&gen->d.directoryName, src)) {
        goto err;
    }

    FUNC0(*tgt);
    *tgt = gen;

    return 1;

 err:
    FUNC0(gen);
    return 0;
}
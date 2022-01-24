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
struct TYPE_5__ {int length; int /*<<< orphan*/  g; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ MDH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  P1024 ; 

__attribute__((used)) static MDH *
FUNC5(int nKeyBits)
{
    size_t res;
    MDH *dh = FUNC1();

    if (!dh)
        goto failed;

    FUNC3(dh->g);

    if (!dh->g)
        goto failed;

    FUNC2(dh->p, P1024, res);	/* prime P1024, see dhgroups.h */
    if (!res)
    {
        goto failed;
    }

    FUNC4(dh->g, 2);	/* base 2 */

    dh->length = nKeyBits;
    return dh;

failed:
    if (dh)
        FUNC0(dh);

    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * priv_key; int /*<<< orphan*/ * pub_key; int /*<<< orphan*/  p; } ;
typedef  int /*<<< orphan*/ * MP_t ;
typedef  TYPE_1__ MDH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  Q1024 ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(MDH *dh)
{
    size_t res = 0;
    if (!dh)
        return 0;

    while (!res)
    {
        MP_t q1 = NULL;

        if (!FUNC0(dh))
            return 0;

        FUNC2(q1, Q1024, res);
        FUNC3(res);

        res = FUNC4(dh->pub_key, dh->p, q1);
        if (!res)
        {
            FUNC1(dh->pub_key);
            FUNC1(dh->priv_key);
            dh->pub_key = dh->priv_key = 0;
        }

        FUNC1(q1);
    }
    return 1;
}
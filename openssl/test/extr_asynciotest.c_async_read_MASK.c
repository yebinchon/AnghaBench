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
struct async_ctrs {scalar_t__ rctr; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct async_ctrs* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(BIO *bio, char *out, int outl)
{
    struct async_ctrs *ctrs;
    int ret = 0;
    BIO *next = FUNC2(bio);

    if (outl <= 0)
        return 0;
    if (next == NULL)
        return 0;

    ctrs = FUNC1(bio);

    FUNC0(bio);

    if (ctrs->rctr > 0) {
        ret = FUNC3(next, out, 1);
        if (ret <= 0 && FUNC5(next))
            FUNC4(bio);
        ctrs->rctr = 0;
    } else {
        ctrs->rctr++;
        FUNC4(bio);
    }

    return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(BIO *b, char *out, int outl)
{
    int ret = 0;

    if (out != NULL) {
        FUNC4();
# ifndef OPENSSL_NO_KTLS
        if (FUNC1(b))
            ret = FUNC5(b->num, out, outl);
        else
# endif
            ret = FUNC6(b->num, out, outl);
        FUNC0(b);
        if (ret <= 0) {
            if (FUNC3(ret))
                FUNC2(b);
        }
    }
    return ret;
}
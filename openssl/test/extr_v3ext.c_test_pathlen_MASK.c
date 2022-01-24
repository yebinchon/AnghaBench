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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (long,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  infile ; 

__attribute__((used)) static int FUNC7(void)
{
    X509 *x = NULL;
    BIO *b = NULL;
    long pathlen;
    int ret = 0;

    if (!FUNC4(b = FUNC1(infile, "r"))
            || !FUNC4(x = FUNC2(b, NULL, NULL, NULL))
            || !FUNC3(pathlen = FUNC6(x), 6))
        goto end;

    ret = 1;

end:
    FUNC0(b);
    FUNC5(x);
    return ret;
}
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
struct TYPE_3__ {int /*<<< orphan*/  expected; scalar_t__ input; } ;
typedef  TYPE_1__ TESTDATA ;
typedef  int /*<<< orphan*/  MDC2_CTX ;

/* Variables and functions */
 int MDC2_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__* tests ; 

__attribute__((used)) static int FUNC6(int idx)
{
    unsigned char md[MDC2_DIGEST_LENGTH];
    MDC2_CTX c;
    const TESTDATA testdata = tests[idx];

    FUNC1(&c);
    FUNC2(&c, (const unsigned char *)testdata.input,
                FUNC5(testdata.input));
    FUNC0(&(md[0]), &c);

    if (!FUNC4(testdata.expected, MDC2_DIGEST_LENGTH,
                     md, MDC2_DIGEST_LENGTH)) {
        FUNC3("mdc2 test %d: unexpected output", idx);
        return 0;
    }

    return 1;
}
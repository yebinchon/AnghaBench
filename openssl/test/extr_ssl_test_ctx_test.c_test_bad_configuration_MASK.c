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
typedef  int /*<<< orphan*/  SSL_TEST_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * bad_configurations ; 
 int /*<<< orphan*/  conf ; 

__attribute__((used)) static int FUNC3(int idx)
{
    SSL_TEST_CTX *ctx;

    if (!FUNC2(ctx = FUNC0(conf,
                                                 bad_configurations[idx]))) {
        FUNC1(ctx);
        return 0;
    }

    return 1;
}
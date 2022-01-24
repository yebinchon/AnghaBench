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

/* Variables and functions */
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  TLS1_3_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void)
{
#ifndef OPENSSL_NO_TLS1_3
    if (!FUNC0(TLS1_3_VERSION, 1, 0))
        return 0;
#endif

#ifndef OPENSSL_NO_TLS1_2
    return FUNC0(TLS1_2_VERSION, 1, 0);
#else
    return 1;
#endif
}
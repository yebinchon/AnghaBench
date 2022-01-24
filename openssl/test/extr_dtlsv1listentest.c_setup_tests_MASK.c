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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtls_listen_test ; 
 int /*<<< orphan*/  testpackets ; 

int FUNC2(void)
{
#ifndef OPENSSL_NO_SOCK
    FUNC0(dtls_listen_test, (int)FUNC1(testpackets));
#endif
    return 1;
}
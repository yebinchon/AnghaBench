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
typedef  int /*<<< orphan*/  OSSL_CMP_severity ;

/* Variables and functions */
 int /*<<< orphan*/  msg_total_size ; 
 scalar_t__ FUNC0 (char const*) ; 

__attribute__((used)) static int FUNC1(const char *func, const char *file, int line,
                                 OSSL_CMP_severity level, const char *msg)
{
    msg_total_size += FUNC0(msg);
    return 1;
}
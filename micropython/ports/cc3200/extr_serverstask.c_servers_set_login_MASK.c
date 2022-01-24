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
 scalar_t__ SERVERS_USER_PASS_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpexception_value_invalid_arguments ; 
 int /*<<< orphan*/  servers_pass ; 
 int /*<<< orphan*/  servers_user ; 
 scalar_t__ FUNC2 (char*) ; 

void FUNC3 (char *user, char *pass) {
    if (FUNC2(user) > SERVERS_USER_PASS_LEN_MAX || FUNC2(pass) > SERVERS_USER_PASS_LEN_MAX) {
        FUNC1(mpexception_value_invalid_arguments);
    }
    FUNC0(servers_user, user, SERVERS_USER_PASS_LEN_MAX);
    FUNC0(servers_pass, pass, SERVERS_USER_PASS_LEN_MAX);
}
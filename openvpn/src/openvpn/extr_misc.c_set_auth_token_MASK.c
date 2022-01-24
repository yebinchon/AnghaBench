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
struct user_pass {int defined; char const* password; char const* username; } ;

/* Variables and functions */
 int /*<<< orphan*/  USER_PASS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct user_pass*,int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct user_pass *up, struct user_pass *tk, const char *token)
{

    if (token && FUNC1(token) && up && up->defined)
    {
        FUNC2(tk->password, token, USER_PASS_LEN);
        FUNC2(tk->username, up->username, USER_PASS_LEN);
        tk->defined = true;
    }

    /* Cleans user/pass for nocache */
    FUNC0(up, false);
}
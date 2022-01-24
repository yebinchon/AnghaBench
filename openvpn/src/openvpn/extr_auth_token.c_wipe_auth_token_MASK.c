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
struct tls_multi {int /*<<< orphan*/ * auth_token_initial; int /*<<< orphan*/ * auth_token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct tls_multi *multi)
{
    if (multi)
    {
        if (multi->auth_token)
        {
            FUNC1(multi->auth_token, FUNC2(multi->auth_token));
            FUNC0(multi->auth_token);
        }
        if (multi->auth_token_initial)
        {
            FUNC1(multi->auth_token_initial,
                           FUNC2(multi->auth_token_initial));
            FUNC0(multi->auth_token_initial);
        }
        multi->auth_token = NULL;
        multi->auth_token_initial = NULL;
    }
}
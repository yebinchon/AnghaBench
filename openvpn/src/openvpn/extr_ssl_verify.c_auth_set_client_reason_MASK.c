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
struct tls_multi {int /*<<< orphan*/ * client_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 

void
FUNC3(struct tls_multi* multi, const char* client_reason)
{
    if (multi->client_reason)
    {
        FUNC0(multi->client_reason);
        multi->client_reason = NULL;
    }
    if (client_reason && FUNC2(client_reason))
    {
        multi->client_reason = FUNC1(client_reason, NULL);
    }
}
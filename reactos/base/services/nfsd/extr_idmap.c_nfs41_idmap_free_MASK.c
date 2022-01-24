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
struct idmap_context {int /*<<< orphan*/  groups; int /*<<< orphan*/  users; scalar_t__ ldap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct idmap_context*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(
    struct idmap_context *context)
{
    /* clean up the connection */
    if (context->ldap)
        FUNC2(context->ldap);

    FUNC0(&context->users);
    FUNC0(&context->groups);
    FUNC1(context);
}
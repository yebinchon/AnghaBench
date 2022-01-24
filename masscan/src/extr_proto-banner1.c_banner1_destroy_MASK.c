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
struct Banner1 {scalar_t__ http_fields; scalar_t__ smack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Banner1*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void
FUNC2(struct Banner1 *b)
{
    if (b == NULL)
        return;
    if (b->smack)
        FUNC1(b->smack);
    if (b->http_fields)
        FUNC1(b->http_fields);
    FUNC0(b);
}
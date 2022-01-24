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
struct SMACK {struct SMACK* table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SMACK*) ; 
 int /*<<< orphan*/  FUNC1 (struct SMACK*) ; 
 int /*<<< orphan*/  FUNC2 (struct SMACK*) ; 
 int /*<<< orphan*/  FUNC3 (struct SMACK*) ; 

void
FUNC4(struct SMACK *smack)
{
    FUNC0(smack);
    FUNC1(smack);
    FUNC2(smack);

    if (smack->table)
        FUNC3(smack->table);

    FUNC3(smack);
}
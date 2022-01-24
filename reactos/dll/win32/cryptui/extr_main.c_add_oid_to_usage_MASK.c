#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cUsageIdentifier; int /*<<< orphan*/ * rgpszUsageIdentifier; } ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  TYPE_1__ CERT_ENHKEY_USAGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static CERT_ENHKEY_USAGE *FUNC4(CERT_ENHKEY_USAGE *usage, LPSTR oid)
{
    if (!usage->cUsageIdentifier)
        usage->rgpszUsageIdentifier = FUNC1(FUNC0(), 0,
         sizeof(LPSTR));
    else
        usage->rgpszUsageIdentifier = FUNC3(FUNC0(), 0,
         usage->rgpszUsageIdentifier,
         (usage->cUsageIdentifier + 1) * sizeof(LPSTR));
    if (usage->rgpszUsageIdentifier)
        usage->rgpszUsageIdentifier[usage->cUsageIdentifier++] = oid;
    else
    {
        FUNC2(FUNC0(), 0, usage);
        usage = NULL;
    }
    return usage;
}
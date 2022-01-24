#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  entry; int /*<<< orphan*/  info; int /*<<< orphan*/  subject; } ;
typedef  TYPE_1__ WINE_SIP_PROVIDER ;
typedef  int /*<<< orphan*/  SIP_DISPATCH_INFO ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  providers ; 
 int /*<<< orphan*/  providers_cs ; 

__attribute__((used)) static void FUNC4(const GUID *pgSubject, SIP_DISPATCH_INFO *info)
{
    WINE_SIP_PROVIDER *prov = FUNC0(sizeof(WINE_SIP_PROVIDER));

    if (prov)
    {
        prov->subject = *pgSubject;
        prov->info = *info;
        FUNC1(&providers_cs);
        FUNC3(&providers, &prov->entry);
        FUNC2(&providers_cs);
    }
}
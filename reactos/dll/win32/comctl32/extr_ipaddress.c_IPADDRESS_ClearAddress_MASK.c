#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {TYPE_1__* Part; } ;
struct TYPE_4__ {int /*<<< orphan*/  EditHwnd; } ;
typedef  TYPE_2__ IPADDRESS_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2 (const IPADDRESS_INFO *infoPtr)
{
    static const WCHAR nil[] = { 0 };
    int i;

    FUNC1("\n");

    for (i = 0; i < 4; i++)
        FUNC0 (infoPtr->Part[i].EditHwnd, nil);
}
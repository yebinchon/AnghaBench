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
struct TYPE_3__ {int callbackMask; int /*<<< orphan*/  iImage; int /*<<< orphan*/ * pszText; } ;
typedef  TYPE_1__ HEADER_ITEM ;

/* Variables and functions */
 int HDI_IMAGE ; 
 int HDI_TEXT ; 
 int /*<<< orphan*/  I_IMAGECALLBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(HEADER_ITEM *lpItem)
{
    if (lpItem->callbackMask&HDI_TEXT)
    {
        FUNC0(lpItem->pszText);
        lpItem->pszText = NULL;
    }

    if (lpItem->callbackMask&HDI_IMAGE)
        lpItem->iImage = I_IMAGECALLBACK;
}
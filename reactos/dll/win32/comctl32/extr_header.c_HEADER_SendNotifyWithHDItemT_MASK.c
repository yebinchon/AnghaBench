#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {scalar_t__ nNotifyFormat; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pitem; scalar_t__ iButton; int /*<<< orphan*/  iItem; } ;
typedef  TYPE_1__ NMHEADERW ;
typedef  int /*<<< orphan*/  NMHDR ;
typedef  int /*<<< orphan*/  INT ;
typedef  TYPE_2__ HEADER_INFO ;
typedef  int /*<<< orphan*/  HDITEMW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ NFR_UNICODE ; 

__attribute__((used)) static BOOL
FUNC2(const HEADER_INFO *infoPtr, UINT code, INT iItem, HDITEMW *lpItem)
{
    NMHEADERW nmhdr;
    
    if (infoPtr->nNotifyFormat != NFR_UNICODE)
        code = FUNC0(code);
    nmhdr.iItem = iItem;
    nmhdr.iButton = 0;
    nmhdr.pitem = lpItem;

    return (BOOL)FUNC1(infoPtr, code, (NMHDR *)&nmhdr);
}
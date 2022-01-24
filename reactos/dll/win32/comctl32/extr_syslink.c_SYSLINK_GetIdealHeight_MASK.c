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
struct TYPE_6__ {int /*<<< orphan*/  Self; int /*<<< orphan*/  Font; } ;
struct TYPE_5__ {scalar_t__ tmHeight; } ;
typedef  TYPE_1__ TEXTMETRICW ;
typedef  TYPE_2__ SYSLINK_INFO ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC4 (const SYSLINK_INFO *infoPtr)
{
    HDC hdc = FUNC0(infoPtr->Self);
    if(hdc != NULL)
    {
        LRESULT height;
        TEXTMETRICW tm;
        HGDIOBJ hOldFont = FUNC3(hdc, infoPtr->Font);
        
        if(FUNC1(hdc, &tm))
        {
            height = tm.tmHeight;
        }
        else
        {
            height = 0;
        }
        FUNC3(hdc, hOldFont);
        FUNC2(infoPtr->Self, hdc);
        
        return height;
    }
    return 0;
}
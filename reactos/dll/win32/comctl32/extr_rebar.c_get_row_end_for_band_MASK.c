#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int iRow; } ;
struct TYPE_6__ {int uNumBands; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  int INT ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_1__ const*,int) ; 
 int FUNC1 (TYPE_1__ const*,int) ; 

__attribute__((used)) static int FUNC2(const REBAR_INFO *infoPtr, INT iBand)
{
    int iRow = FUNC0(infoPtr, iBand)->iRow;
    while ((iBand = FUNC1(infoPtr, iBand)) < infoPtr->uNumBands)
        if (FUNC0(infoPtr, iBand)->iRow != iRow)
            break;
    return iBand;
}
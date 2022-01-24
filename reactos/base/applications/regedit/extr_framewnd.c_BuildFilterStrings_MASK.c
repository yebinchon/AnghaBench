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
typedef  int WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  FilterID; int /*<<< orphan*/  DisplayID; } ;
typedef  TYPE_1__* PFILTERPAIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  hInst ; 

void
FUNC1(WCHAR *Filter, PFILTERPAIR Pairs, int PairCount)
{
    int i, c;

    c = 0;
    for(i = 0; i < PairCount; i++)
    {
        c += FUNC0(hInst, Pairs[i].DisplayID, &Filter[c], 255);
        Filter[++c] = L'\0';
        c += FUNC0(hInst, Pairs[i].FilterID, &Filter[c], 255);
        Filter[++c] = L'\0';
    }
    Filter[++c] = L'\0';
}
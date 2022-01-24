#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * NextStyle; int /*<<< orphan*/ * ChildStyle; struct TYPE_4__* StyleName; int /*<<< orphan*/ * DisplayName; } ;
typedef  int /*<<< orphan*/  THEME_STYLE ;
typedef  TYPE_1__* PTHEME_STYLE ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static PTHEME_STYLE
FUNC3(LPCWSTR pszName, LPCWSTR pszDisplayName)
{
    PTHEME_STYLE pStyle;

    pStyle = (PTHEME_STYLE) FUNC2(sizeof(THEME_STYLE));
    if (pStyle == NULL) return NULL;

    pStyle->StyleName = FUNC0(pszName);
    if (pStyle->StyleName == NULL)
    {
        FUNC1(pStyle);
        return NULL;
    }

    pStyle->DisplayName = FUNC0(pszDisplayName);
    if (pStyle->DisplayName == NULL)
    {
        FUNC1(pStyle->StyleName);
        FUNC1(pStyle);
        return NULL;
    }

    pStyle->ChildStyle = NULL;
    pStyle->NextStyle = NULL;

    return pStyle;
}
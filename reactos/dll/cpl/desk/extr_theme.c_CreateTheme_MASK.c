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
struct TYPE_5__ {struct TYPE_5__* DisplayName; int /*<<< orphan*/ * ThemeFileName; int /*<<< orphan*/ * SizesList; int /*<<< orphan*/ * NextTheme; int /*<<< orphan*/ * ColoursList; } ;
typedef  TYPE_1__ THEME ;
typedef  TYPE_1__* PTHEME ;
typedef  int /*<<< orphan*/ * LPCWSTR ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static THEME*
FUNC3(LPCWSTR pszName, LPCWSTR pszDisplayName)
{
    PTHEME pTheme;

    pTheme = (PTHEME) FUNC2(sizeof(THEME));
    if (pTheme == NULL) return NULL;

    pTheme->DisplayName = FUNC0(pszDisplayName);
    if (pTheme->DisplayName == NULL)
    {
        FUNC1(pTheme);
        return NULL;
    }

    pTheme->ColoursList = NULL;
    pTheme->NextTheme = NULL;
    pTheme->SizesList = NULL;

    if (pszName == NULL)
    {
        pTheme->ThemeFileName = NULL;
        return pTheme;
    }

    pTheme->ThemeFileName = FUNC0(pszName);
    if (pTheme->ThemeFileName == NULL)
    {
        FUNC1(pTheme->DisplayName);
        FUNC1(pTheme);
        return NULL;
    }

    return pTheme;
}
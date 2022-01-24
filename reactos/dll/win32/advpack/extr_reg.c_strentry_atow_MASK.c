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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  pszValue; int /*<<< orphan*/  pszName; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pszValue; int /*<<< orphan*/ * pszName; } ;
typedef  TYPE_1__ STRENTRYW ;
typedef  TYPE_2__ STRENTRYA ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(const STRENTRYA *aentry, STRENTRYW *wentry)
{
    DWORD name_len, val_len;

    name_len = FUNC2(CP_ACP, 0, aentry->pszName, -1, NULL, 0);
    val_len = FUNC2(CP_ACP, 0, aentry->pszValue, -1, NULL, 0);

    wentry->pszName = FUNC1(FUNC0(), 0, name_len * sizeof(WCHAR));
    wentry->pszValue = FUNC1(FUNC0(), 0, val_len * sizeof(WCHAR));

    FUNC2(CP_ACP, 0, aentry->pszName, -1, wentry->pszName, name_len);
    FUNC2(CP_ACP, 0, aentry->pszValue, -1, wentry->pszValue, val_len);
}
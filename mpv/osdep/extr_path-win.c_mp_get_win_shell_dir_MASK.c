#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  REFKNOWNFOLDERID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KF_FLAG_CREATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 char* FUNC3 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC4(void *talloc_ctx, REFKNOWNFOLDERID folder)
{
    wchar_t *w_appdir = NULL;

    if (FUNC1(FUNC2(folder, KF_FLAG_CREATE, NULL, &w_appdir)))
        return NULL;

    char *appdir = FUNC3(talloc_ctx, w_appdir);
    FUNC0(w_appdir);
    return appdir;
}
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
typedef  int /*<<< orphan*/  t ;
struct MPContext {int /*<<< orphan*/  mconfig; } ;
typedef  int /*<<< orphan*/  m_profile_t ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FILE_LOCAL_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static void FUNC5(struct MPContext *mpctx, char *category,
                                 bstr item)
{
    if (!item.len)
        return;

    char t[512];
    FUNC4(t, sizeof(t), "%s.%.*s", category, FUNC0(item));
    m_profile_t *p = FUNC2(mpctx->mconfig, t);
    if (p) {
        FUNC1(mpctx, "Auto-loading profile '%s'\n", t);
        FUNC3(mpctx->mconfig, t, FILE_LOCAL_FLAGS);
    }
}
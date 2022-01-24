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
struct MPContext {int /*<<< orphan*/  mconfig; int /*<<< orphan*/  global; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 char** FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 

__attribute__((used)) static void FUNC3(struct MPContext *mpctx, char *section,
                              char *filename)
{
    char **cf = FUNC1(NULL, mpctx->global, filename);
    for (int i = 0; cf && cf[i]; i++)
        FUNC0(mpctx->mconfig, cf[i], section, 0);
    FUNC2(cf);
}
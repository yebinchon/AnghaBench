#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct MPContext {int /*<<< orphan*/  global; TYPE_1__* opts; } ;
struct TYPE_2__ {char** script_files; int /*<<< orphan*/  auto_load_scripts; } ;

/* Variables and functions */
 char** FUNC0 (void*,char*) ; 
 char** FUNC1 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct MPContext *mpctx)
{
    // Load scripts from options
    char **files = mpctx->opts->script_files;
    for (int n = 0; files && files[n]; n++) {
        if (files[n][0])
            FUNC3(mpctx, files[n]);
    }
    if (!mpctx->opts->auto_load_scripts)
        return;

    // Load all scripts
    void *tmp = FUNC5(NULL);
    char **scriptsdir = FUNC1(tmp, mpctx->global, "scripts");
    for (int i = 0; scriptsdir && scriptsdir[i]; i++) {
        files = FUNC0(tmp, scriptsdir[i]);
        for (int n = 0; files && files[n]; n++)
            FUNC2(mpctx, files[n]);
    }
    FUNC4(tmp);
}
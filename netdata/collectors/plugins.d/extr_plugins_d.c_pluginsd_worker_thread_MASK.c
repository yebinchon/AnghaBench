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
struct plugind {char* pid; int /*<<< orphan*/  enabled; int /*<<< orphan*/  fullfilename; int /*<<< orphan*/  cmd; scalar_t__ obsolete; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  localhost ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  netdata_exit ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 
 size_t FUNC8 (int /*<<< orphan*/ ,struct plugind*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pluginsd_worker_thread_cleanup ; 
 int /*<<< orphan*/  FUNC9 (struct plugind*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct plugind*) ; 
 scalar_t__ FUNC11 (int) ; 

void *FUNC12(void *arg) {
    FUNC7(pluginsd_worker_thread_cleanup, arg);

    struct plugind *cd = (struct plugind *)arg;

    cd->obsolete = 0;
    size_t count = 0;

    while(!netdata_exit) {
        FILE *fp = FUNC5(cd->cmd, &cd->pid);
        if(FUNC11(!fp)) {
            FUNC0("Cannot popen(\"%s\", \"r\").", cd->cmd);
            break;
        }

        FUNC1("connected to '%s' running on pid %d", cd->fullfilename, cd->pid);
        count = FUNC8(localhost, cd, fp, 0);
        FUNC0("'%s' (pid %d) disconnected after %zu successful data collections (ENDs).", cd->fullfilename, cd->pid, count);
        FUNC2(cd->pid);

        int worker_ret_code = FUNC4(fp, cd->pid);

        if (FUNC3(worker_ret_code == 0))
            FUNC10(cd);
        else
            FUNC9(cd, worker_ret_code);

        cd->pid = 0;
        if(FUNC11(!cd->enabled)) break;
    }

    FUNC6(1);
    return NULL;
}
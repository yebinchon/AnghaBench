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
typedef  int /*<<< orphan*/  uv_fs_t ;
struct rrdengine_journalfile {int /*<<< orphan*/  file; } ;
struct TYPE_2__ {int /*<<< orphan*/  fs_errors; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct rrdengine_datafile {struct rrdengine_instance* ctx; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int RRDENG_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rrdengine_datafile*,char*,int) ; 
 int /*<<< orphan*/  global_fs_errors ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int) ; 

int FUNC6(struct rrdengine_journalfile *journalfile, struct rrdengine_datafile *datafile)
{
    struct rrdengine_instance *ctx = datafile->ctx;
    uv_fs_t req;
    int ret;
    char path[RRDENG_PATH_MAX];

    FUNC1(datafile, path, sizeof(path));

    ret = FUNC3(NULL, &req, journalfile->file, NULL);
    if (ret < 0) {
        FUNC0("uv_fs_close(%s): %s", path, FUNC5(ret));
        ++ctx->stats.fs_errors;
        FUNC2(&global_fs_errors, 1);
    }
    FUNC4(&req);

    return ret;
}
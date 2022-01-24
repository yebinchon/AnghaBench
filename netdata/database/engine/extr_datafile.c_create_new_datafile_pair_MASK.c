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
struct rrdengine_journalfile {scalar_t__ pos; struct rrdengine_journalfile* journalfile; } ;
struct rrdengine_instance {char* dbfiles_path; int /*<<< orphan*/  disk_space; } ;
struct rrdengine_datafile {scalar_t__ pos; struct rrdengine_datafile* journalfile; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int RRDENG_PATH_MAX ; 
 int FUNC0 (struct rrdengine_journalfile*) ; 
 int FUNC1 (struct rrdengine_journalfile*,struct rrdengine_journalfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct rrdengine_journalfile*,struct rrdengine_instance*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct rrdengine_instance*,struct rrdengine_journalfile*) ; 
 int /*<<< orphan*/  FUNC4 (struct rrdengine_journalfile*) ; 
 int /*<<< orphan*/  FUNC5 (struct rrdengine_journalfile*) ; 
 int /*<<< orphan*/  FUNC6 (struct rrdengine_journalfile*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rrdengine_journalfile*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct rrdengine_journalfile*,struct rrdengine_journalfile*) ; 
 struct rrdengine_journalfile* FUNC10 (int) ; 

int FUNC11(struct rrdengine_instance *ctx, unsigned tier, unsigned fileno)
{
    struct rrdengine_datafile *datafile;
    struct rrdengine_journalfile *journalfile;
    int ret;
    char path[RRDENG_PATH_MAX];

    FUNC8("Creating new data and journal files in path %s", ctx->dbfiles_path);
    datafile = FUNC10(sizeof(*datafile));
    FUNC2(datafile, ctx, tier, fileno);
    ret = FUNC0(datafile);
    if (!ret) {
        FUNC6(datafile, path, sizeof(path));
        FUNC8("Created data file \"%s\".", path);
    } else {
        goto error_after_datafile;
    }

    journalfile = FUNC10(sizeof(*journalfile));
    datafile->journalfile = journalfile;
    FUNC9(journalfile, datafile);
    ret = FUNC1(journalfile, datafile);
    if (!ret) {
        FUNC7(datafile, path, sizeof(path));
        FUNC8("Created journal file \"%s\".", path);
    } else {
        goto error_after_journalfile;
    }
    FUNC3(ctx, datafile);
    ctx->disk_space += datafile->pos + journalfile->pos;

    return 0;

error_after_journalfile:
    FUNC4(datafile);
    FUNC5(journalfile);
error_after_datafile:
    FUNC5(datafile);
    return ret;
}
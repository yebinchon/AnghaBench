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
struct TYPE_6__ {scalar_t__ result; } ;
typedef  TYPE_2__ uv_fs_t ;
typedef  int /*<<< orphan*/  uv_file ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct TYPE_5__ {int io_write_bytes; int /*<<< orphan*/  io_write_requests; int /*<<< orphan*/  io_errors; int /*<<< orphan*/  datafile_creations; int /*<<< orphan*/  fs_errors; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct rrdengine_datafile {int pos; int /*<<< orphan*/  file; struct rrdengine_instance* ctx; } ;
struct rrdeng_df_sb {int tier; int /*<<< orphan*/  version; int /*<<< orphan*/  magic_number; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  RRDENG_DF_MAGIC ; 
 int /*<<< orphan*/  RRDENG_DF_VER ; 
 int /*<<< orphan*/  RRDENG_MAGIC_SZ ; 
 int RRDENG_PATH_MAX ; 
 int /*<<< orphan*/  RRDENG_VER_SZ ; 
 int /*<<< orphan*/  RRDFILE_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rrdengine_datafile*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rrdeng_df_sb*) ; 
 int /*<<< orphan*/  FUNC5 (struct rrdengine_datafile*,char*,int) ; 
 int /*<<< orphan*/  global_fs_errors ; 
 int /*<<< orphan*/  global_io_errors ; 
 int FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (void*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

int FUNC16(struct rrdengine_datafile *datafile)
{
    struct rrdengine_instance *ctx = datafile->ctx;
    uv_fs_t req;
    uv_file file;
    int ret, fd;
    struct rrdeng_df_sb *superblock;
    uv_buf_t iov;
    char path[RRDENG_PATH_MAX];

    FUNC5(datafile, path, sizeof(path));
    fd = FUNC6(path, O_CREAT | O_RDWR | O_TRUNC, &file);
    if (fd < 0) {
        ++ctx->stats.fs_errors;
        FUNC8(&global_fs_errors, 1);
        return fd;
    }
    datafile->file = file;
    ++ctx->stats.datafile_creations;

    ret = FUNC7((void *)&superblock, RRDFILE_ALIGNMENT, sizeof(*superblock));
    if (FUNC11(ret)) {
        FUNC3("posix_memalign:%s", FUNC9(ret));
    }
    (void) FUNC10(superblock->magic_number, RRDENG_DF_MAGIC, RRDENG_MAGIC_SZ);
    (void) FUNC10(superblock->version, RRDENG_DF_VER, RRDENG_VER_SZ);
    superblock->tier = 1;

    iov = FUNC12((void *)superblock, sizeof(*superblock));

    ret = FUNC14(NULL, &req, file, &iov, 1, 0, NULL);
    if (ret < 0) {
        FUNC0(req.result < 0);
        FUNC2("uv_fs_write: %s", FUNC15(ret));
        ++ctx->stats.io_errors;
        FUNC8(&global_io_errors, 1);
    }
    FUNC13(&req);
    FUNC4(superblock);
    if (ret < 0) {
        FUNC1(datafile);
        return ret;
    }

    datafile->pos = sizeof(*superblock);
    ctx->stats.io_write_bytes += sizeof(*superblock);
    ++ctx->stats.io_write_requests;

    return 0;
}
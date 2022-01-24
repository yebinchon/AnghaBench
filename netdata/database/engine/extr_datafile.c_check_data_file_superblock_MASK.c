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
struct TYPE_4__ {scalar_t__ result; } ;
typedef  TYPE_1__ uv_fs_t ;
typedef  int /*<<< orphan*/  uv_file ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct rrdeng_df_sb {int tier; int /*<<< orphan*/  version; int /*<<< orphan*/  magic_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  RRDENG_DF_MAGIC ; 
 int /*<<< orphan*/  RRDENG_DF_VER ; 
 int /*<<< orphan*/  RRDENG_MAGIC_SZ ; 
 int /*<<< orphan*/  RRDENG_VER_SZ ; 
 int /*<<< orphan*/  RRDFILE_ALIGNMENT ; 
 int UV_EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rrdeng_df_sb*) ; 
 int FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(uv_file file)
{
    int ret;
    struct rrdeng_df_sb *superblock;
    uv_buf_t iov;
    uv_fs_t req;

    ret = FUNC4((void *)&superblock, RRDFILE_ALIGNMENT, sizeof(*superblock));
    if (FUNC7(ret)) {
        FUNC2("posix_memalign:%s", FUNC5(ret));
    }
    iov = FUNC8((void *)superblock, sizeof(*superblock));

    ret = FUNC9(NULL, &req, file, &iov, 1, 0, NULL);
    if (ret < 0) {
        FUNC1("uv_fs_read: %s", FUNC11(ret));
        FUNC10(&req);
        goto error;
    }
    FUNC0(req.result >= 0);
    FUNC10(&req);

    if (FUNC6(superblock->magic_number, RRDENG_DF_MAGIC, RRDENG_MAGIC_SZ) ||
        FUNC6(superblock->version, RRDENG_DF_VER, RRDENG_VER_SZ) ||
        superblock->tier != 1) {
        FUNC1("File has invalid superblock.");
        ret = UV_EINVAL;
    } else {
        ret = 0;
    }
    error:
    FUNC3(superblock);
    return ret;
}
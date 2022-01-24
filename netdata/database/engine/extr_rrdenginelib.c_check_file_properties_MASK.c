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
struct TYPE_5__ {int st_mode; size_t st_size; } ;
typedef  TYPE_1__ uv_stat_t ;
struct TYPE_6__ {scalar_t__ result; TYPE_1__* ptr; } ;
typedef  TYPE_2__ uv_fs_t ;
typedef  int /*<<< orphan*/  uv_file ;
typedef  size_t uint64_t ;

/* Variables and functions */
 int S_IFREG ; 
 int UV_EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(uv_file file, uint64_t *file_size, size_t min_size)
{
    int ret;
    uv_fs_t req;
    uv_stat_t* s;

    ret = FUNC3(NULL, &req, file, NULL);
    if (ret < 0) {
        FUNC2("uv_fs_fstat: %s\n", FUNC5(ret));
    }
    FUNC0(req.result == 0);
    s = req.ptr;
    if (!(s->st_mode & S_IFREG)) {
        FUNC1("Not a regular file.\n");
        FUNC4(&req);
        return UV_EINVAL;
    }
    if (s->st_size < min_size) {
        FUNC1("File length is too short.\n");
        FUNC4(&req);
        return UV_EINVAL;
    }
    *file_size = s->st_size;
    FUNC4(&req);

    return 0;
}
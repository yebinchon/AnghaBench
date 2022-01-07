
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int st_mode; size_t st_size; } ;
typedef TYPE_1__ uv_stat_t ;
struct TYPE_6__ {scalar_t__ result; TYPE_1__* ptr; } ;
typedef TYPE_2__ uv_fs_t ;
typedef int uv_file ;
typedef size_t uint64_t ;


 int S_IFREG ;
 int UV_EINVAL ;
 int assert (int) ;
 int error (char*) ;
 int fatal (char*,int ) ;
 int uv_fs_fstat (int *,TYPE_2__*,int ,int *) ;
 int uv_fs_req_cleanup (TYPE_2__*) ;
 int uv_strerror (int) ;

int check_file_properties(uv_file file, uint64_t *file_size, size_t min_size)
{
    int ret;
    uv_fs_t req;
    uv_stat_t* s;

    ret = uv_fs_fstat(((void*)0), &req, file, ((void*)0));
    if (ret < 0) {
        fatal("uv_fs_fstat: %s\n", uv_strerror(ret));
    }
    assert(req.result == 0);
    s = req.ptr;
    if (!(s->st_mode & S_IFREG)) {
        error("Not a regular file.\n");
        uv_fs_req_cleanup(&req);
        return UV_EINVAL;
    }
    if (s->st_size < min_size) {
        error("File length is too short.\n");
        uv_fs_req_cleanup(&req);
        return UV_EINVAL;
    }
    *file_size = s->st_size;
    uv_fs_req_cleanup(&req);

    return 0;
}

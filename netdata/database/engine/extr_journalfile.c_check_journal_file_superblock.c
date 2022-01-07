
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ result; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv_file ;
typedef int uv_buf_t ;
struct rrdeng_jf_sb {int version; int magic_number; } ;


 int RRDENG_JF_MAGIC ;
 int RRDENG_JF_VER ;
 int RRDENG_MAGIC_SZ ;
 int RRDENG_VER_SZ ;
 int RRDFILE_ALIGNMENT ;
 int UV_EINVAL ;
 int assert (int) ;
 int error (char*,...) ;
 int fatal (char*,int ) ;
 int free (struct rrdeng_jf_sb*) ;
 int posix_memalign (void*,int ,int) ;
 int strerror (int) ;
 scalar_t__ strncmp (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int uv_buf_init (void*,int) ;
 int uv_fs_read (int *,TYPE_1__*,int ,int *,int,int ,int *) ;
 int uv_fs_req_cleanup (TYPE_1__*) ;
 int uv_strerror (int) ;

__attribute__((used)) static int check_journal_file_superblock(uv_file file)
{
    int ret;
    struct rrdeng_jf_sb *superblock;
    uv_buf_t iov;
    uv_fs_t req;

    ret = posix_memalign((void *)&superblock, RRDFILE_ALIGNMENT, sizeof(*superblock));
    if (unlikely(ret)) {
        fatal("posix_memalign:%s", strerror(ret));
    }
    iov = uv_buf_init((void *)superblock, sizeof(*superblock));

    ret = uv_fs_read(((void*)0), &req, file, &iov, 1, 0, ((void*)0));
    if (ret < 0) {
        error("uv_fs_read: %s", uv_strerror(ret));
        uv_fs_req_cleanup(&req);
        goto error;
    }
    assert(req.result >= 0);
    uv_fs_req_cleanup(&req);

    if (strncmp(superblock->magic_number, RRDENG_JF_MAGIC, RRDENG_MAGIC_SZ) ||
        strncmp(superblock->version, RRDENG_JF_VER, RRDENG_VER_SZ)) {
        error("File has invalid superblock.");
        ret = UV_EINVAL;
    } else {
        ret = 0;
    }
    error:
    free(superblock);
    return ret;
}

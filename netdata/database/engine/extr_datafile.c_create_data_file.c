
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ result; } ;
typedef TYPE_2__ uv_fs_t ;
typedef int uv_file ;
typedef int uv_buf_t ;
struct TYPE_5__ {int io_write_bytes; int io_write_requests; int io_errors; int datafile_creations; int fs_errors; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct rrdengine_datafile {int pos; int file; struct rrdengine_instance* ctx; } ;
struct rrdeng_df_sb {int tier; int version; int magic_number; } ;
typedef int path ;


 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int RRDENG_DF_MAGIC ;
 int RRDENG_DF_VER ;
 int RRDENG_MAGIC_SZ ;
 int RRDENG_PATH_MAX ;
 int RRDENG_VER_SZ ;
 int RRDFILE_ALIGNMENT ;
 int assert (int) ;
 int destroy_data_file (struct rrdengine_datafile*) ;
 int error (char*,int ) ;
 int fatal (char*,int ) ;
 int free (struct rrdeng_df_sb*) ;
 int generate_datafilepath (struct rrdengine_datafile*,char*,int) ;
 int global_fs_errors ;
 int global_io_errors ;
 int open_file_direct_io (char*,int,int *) ;
 int posix_memalign (void*,int ,int) ;
 int rrd_stat_atomic_add (int *,int) ;
 int strerror (int) ;
 int strncpy (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int uv_buf_init (void*,int) ;
 int uv_fs_req_cleanup (TYPE_2__*) ;
 int uv_fs_write (int *,TYPE_2__*,int ,int *,int,int ,int *) ;
 int uv_strerror (int) ;

int create_data_file(struct rrdengine_datafile *datafile)
{
    struct rrdengine_instance *ctx = datafile->ctx;
    uv_fs_t req;
    uv_file file;
    int ret, fd;
    struct rrdeng_df_sb *superblock;
    uv_buf_t iov;
    char path[RRDENG_PATH_MAX];

    generate_datafilepath(datafile, path, sizeof(path));
    fd = open_file_direct_io(path, O_CREAT | O_RDWR | O_TRUNC, &file);
    if (fd < 0) {
        ++ctx->stats.fs_errors;
        rrd_stat_atomic_add(&global_fs_errors, 1);
        return fd;
    }
    datafile->file = file;
    ++ctx->stats.datafile_creations;

    ret = posix_memalign((void *)&superblock, RRDFILE_ALIGNMENT, sizeof(*superblock));
    if (unlikely(ret)) {
        fatal("posix_memalign:%s", strerror(ret));
    }
    (void) strncpy(superblock->magic_number, RRDENG_DF_MAGIC, RRDENG_MAGIC_SZ);
    (void) strncpy(superblock->version, RRDENG_DF_VER, RRDENG_VER_SZ);
    superblock->tier = 1;

    iov = uv_buf_init((void *)superblock, sizeof(*superblock));

    ret = uv_fs_write(((void*)0), &req, file, &iov, 1, 0, ((void*)0));
    if (ret < 0) {
        assert(req.result < 0);
        error("uv_fs_write: %s", uv_strerror(ret));
        ++ctx->stats.io_errors;
        rrd_stat_atomic_add(&global_io_errors, 1);
    }
    uv_fs_req_cleanup(&req);
    free(superblock);
    if (ret < 0) {
        destroy_data_file(datafile);
        return ret;
    }

    datafile->pos = sizeof(*superblock);
    ctx->stats.io_write_bytes += sizeof(*superblock);
    ++ctx->stats.io_write_requests;

    return 0;
}

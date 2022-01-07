
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uv_fs_t ;
struct rrdengine_journalfile {int file; } ;
struct TYPE_2__ {int fs_errors; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct rrdengine_datafile {struct rrdengine_instance* ctx; } ;
typedef int path ;


 int RRDENG_PATH_MAX ;
 int error (char*,char*,char*) ;
 int generate_journalfilepath (struct rrdengine_datafile*,char*,int) ;
 int global_fs_errors ;
 int rrd_stat_atomic_add (int *,int) ;
 int uv_fs_close (int *,int *,int ,int *) ;
 int uv_fs_req_cleanup (int *) ;
 char* uv_strerror (int) ;

int close_journal_file(struct rrdengine_journalfile *journalfile, struct rrdengine_datafile *datafile)
{
    struct rrdengine_instance *ctx = datafile->ctx;
    uv_fs_t req;
    int ret;
    char path[RRDENG_PATH_MAX];

    generate_journalfilepath(datafile, path, sizeof(path));

    ret = uv_fs_close(((void*)0), &req, journalfile->file, ((void*)0));
    if (ret < 0) {
        error("uv_fs_close(%s): %s", path, uv_strerror(ret));
        ++ctx->stats.fs_errors;
        rrd_stat_atomic_add(&global_fs_errors, 1);
    }
    uv_fs_req_cleanup(&req);

    return ret;
}

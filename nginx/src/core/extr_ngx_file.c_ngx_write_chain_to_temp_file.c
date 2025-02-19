
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_7__ {scalar_t__ fd; int name; int log; } ;
struct TYPE_6__ {int pool; int offset; TYPE_3__ file; scalar_t__ thread_write; int warn; scalar_t__ log_level; int access; int clean; int persistent; int path; } ;
typedef TYPE_1__ ngx_temp_file_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_chain_t ;


 scalar_t__ NGX_INVALID_FILE ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_create_temp_file (TYPE_3__*,int ,int ,int ,int ,int ) ;
 int ngx_log_error (scalar_t__,int ,int ,char*,int ,int *) ;
 scalar_t__ ngx_thread_write_chain_to_file (TYPE_3__*,int *,int ,int ) ;
 scalar_t__ ngx_write_chain_to_file (TYPE_3__*,int *,int ,int ) ;

ssize_t
ngx_write_chain_to_temp_file(ngx_temp_file_t *tf, ngx_chain_t *chain)
{
    ngx_int_t rc;

    if (tf->file.fd == NGX_INVALID_FILE) {
        rc = ngx_create_temp_file(&tf->file, tf->path, tf->pool,
                                  tf->persistent, tf->clean, tf->access);

        if (rc != NGX_OK) {
            return rc;
        }

        if (tf->log_level) {
            ngx_log_error(tf->log_level, tf->file.log, 0, "%s %V",
                          tf->warn, &tf->file.name);
        }
    }
    return ngx_write_chain_to_file(&tf->file, chain, tf->offset, tf->pool);
}

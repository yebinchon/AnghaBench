
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ssize_t ;
typedef int off_t ;
typedef int ngx_err_t ;
struct TYPE_14__ {int log; TYPE_1__* write; int fd; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_15__ {scalar_t__ file_pos; TYPE_3__* file; } ;
typedef TYPE_5__ ngx_buf_t ;
typedef scalar_t__ int32_t ;
struct TYPE_12__ {int data; } ;
struct TYPE_13__ {TYPE_2__ name; int fd; scalar_t__ thread_handler; } ;
struct TYPE_11__ {int error; } ;


 int NGX_AGAIN ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int ngx_connection_error (TYPE_4__*,int,char*) ;
 int ngx_errno ;
 int ngx_linux_sendfile_thread (TYPE_4__*,TYPE_5__*,size_t) ;
 int ngx_log_debug0 (int ,int ,int,char*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,scalar_t__,size_t) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int,size_t,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,int ,scalar_t__) ;
 int sendfile (int ,int ,scalar_t__*,size_t) ;

__attribute__((used)) static ssize_t
ngx_linux_sendfile(ngx_connection_t *c, ngx_buf_t *file, size_t size)
{



    int32_t offset;

    ssize_t n;
    ngx_err_t err;
    offset = (int32_t) file->file_pos;


eintr:

    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "sendfile: @%O %uz", file->file_pos, size);

    n = sendfile(c->fd, file->file->fd, &offset, size);

    if (n == -1) {
        err = ngx_errno;

        switch (err) {
        case 129:
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "sendfile() is not ready");
            return NGX_AGAIN;

        case 128:
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "sendfile() was interrupted");
            goto eintr;

        default:
            c->write->error = 1;
            ngx_connection_error(c, err, "sendfile() failed");
            return NGX_ERROR;
        }
    }

    if (n == 0) {





        ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                      "sendfile() reported that \"%s\" was truncated at %O",
                      file->file->name.data, file->file_pos);

        return NGX_ERROR;
    }

    ngx_log_debug3(NGX_LOG_DEBUG_EVENT, c->log, 0, "sendfile: %z of %uz @%O",
                   n, size, file->file_pos);

    return n;
}

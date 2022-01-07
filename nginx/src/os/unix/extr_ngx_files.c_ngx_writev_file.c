
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_7__ {size_t size; int count; int iovs; } ;
typedef TYPE_2__ ngx_iovec_t ;
struct TYPE_6__ {int data; } ;
struct TYPE_8__ {scalar_t__ sys_offset; int offset; TYPE_1__ name; int log; int fd; } ;
typedef TYPE_3__ ngx_file_t ;
typedef scalar_t__ ngx_err_t ;


 scalar_t__ NGX_EINTR ;
 int NGX_ERROR ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_CORE ;
 int SEEK_SET ;
 int lseek (int ,scalar_t__,int ) ;
 scalar_t__ ngx_errno ;
 int ngx_log_debug0 (int ,int ,scalar_t__,char*) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,size_t,scalar_t__) ;
 int ngx_log_error (int ,int ,scalar_t__,char*,int ,...) ;
 int pwritev (int ,int ,int ,scalar_t__) ;
 int writev (int ,int ,int ) ;

__attribute__((used)) static ssize_t
ngx_writev_file(ngx_file_t *file, ngx_iovec_t *vec, off_t offset)
{
    ssize_t n;
    ngx_err_t err;

    ngx_log_debug3(NGX_LOG_DEBUG_CORE, file->log, 0,
                   "writev: %d, %uz, %O", file->fd, vec->size, offset);
    if (file->sys_offset != offset) {
        if (lseek(file->fd, offset, SEEK_SET) == -1) {
            ngx_log_error(NGX_LOG_CRIT, file->log, ngx_errno,
                          "lseek() \"%s\" failed", file->name.data);
            return NGX_ERROR;
        }

        file->sys_offset = offset;
    }

eintr:

    n = writev(file->fd, vec->iovs, vec->count);

    if (n == -1) {
        err = ngx_errno;

        if (err == NGX_EINTR) {
            ngx_log_debug0(NGX_LOG_DEBUG_CORE, file->log, err,
                           "writev() was interrupted");
            goto eintr;
        }

        ngx_log_error(NGX_LOG_CRIT, file->log, err,
                      "writev() \"%s\" failed", file->name.data);
        return NGX_ERROR;
    }

    if ((size_t) n != vec->size) {
        ngx_log_error(NGX_LOG_CRIT, file->log, 0,
                      "writev() \"%s\" has written only %z of %uz",
                      file->name.data, n, vec->size);
        return NGX_ERROR;
    }

    file->sys_offset += n;



    file->offset += n;

    return n;
}

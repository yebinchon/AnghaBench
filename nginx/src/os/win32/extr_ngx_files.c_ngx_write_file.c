
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u_long ;
typedef int u_char ;
typedef size_t ssize_t ;
typedef int off_t ;
struct TYPE_6__ {int data; } ;
struct TYPE_7__ {size_t offset; TYPE_1__ name; int log; int fd; } ;
typedef TYPE_2__ ngx_file_t ;
struct TYPE_8__ {size_t Offset; size_t OffsetHigh; int * hEvent; scalar_t__ InternalHigh; scalar_t__ Internal; } ;
typedef TYPE_3__ OVERLAPPED ;


 size_t NGX_ERROR ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_ERR ;
 scalar_t__ WriteFile (int ,int *,size_t,size_t*,TYPE_3__*) ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*,int ,...) ;

ssize_t
ngx_write_file(ngx_file_t *file, u_char *buf, size_t size, off_t offset)
{
    u_long n;
    OVERLAPPED ovlp, *povlp;

    ovlp.Internal = 0;
    ovlp.InternalHigh = 0;
    ovlp.Offset = (u_long) offset;
    ovlp.OffsetHigh = (u_long) (offset >> 32);
    ovlp.hEvent = ((void*)0);

    povlp = &ovlp;

    if (WriteFile(file->fd, buf, size, &n, povlp) == 0) {
        ngx_log_error(NGX_LOG_ERR, file->log, ngx_errno,
                      "WriteFile() \"%s\" failed", file->name.data);
        return NGX_ERROR;
    }

    if (n != size) {
        ngx_log_error(NGX_LOG_CRIT, file->log, 0,
                      "WriteFile() \"%s\" has written only %ul of %uz",
                      file->name.data, n, size);
        return NGX_ERROR;
    }

    file->offset += n;

    return n;
}

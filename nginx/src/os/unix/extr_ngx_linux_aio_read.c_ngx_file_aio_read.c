
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int u_char ;
struct iocb {size_t aio_nbytes; int aio_resfd; int aio_flags; int aio_offset; void* aio_buf; int aio_fildes; int aio_lio_opcode; void* aio_data; } ;
typedef int ssize_t ;
typedef int off_t ;
typedef int ngx_pool_t ;
struct TYPE_12__ {struct TYPE_12__* data; } ;
struct TYPE_9__ {TYPE_5__ name; int log; int fd; TYPE_3__* aio; } ;
typedef TYPE_1__ ngx_file_t ;
struct TYPE_10__ {int active; scalar_t__ complete; scalar_t__ ready; int handler; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_11__ {struct iocb aiocb; int res; TYPE_2__ event; } ;
typedef TYPE_3__ ngx_event_aio_t ;
typedef scalar_t__ ngx_err_t ;


 int IOCB_CMD_PREAD ;
 int IOCB_FLAG_RESFD ;
 int NGX_AGAIN ;
 scalar_t__ NGX_EAGAIN ;
 scalar_t__ NGX_ENOSYS ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_CORE ;
 scalar_t__ NGX_OK ;
 int io_submit (int ,int,struct iocb**) ;
 int ngx_aio_ctx ;
 scalar_t__ ngx_errno ;
 int ngx_eventfd ;
 scalar_t__ ngx_file_aio ;
 int ngx_file_aio_event_handler ;
 scalar_t__ ngx_file_aio_init (TYPE_1__*,int *) ;
 int ngx_log_debug4 (int ,int ,int ,char*,scalar_t__,int ,size_t,TYPE_5__*) ;
 int ngx_log_error (int ,int ,scalar_t__,char*,TYPE_5__*) ;
 int ngx_memzero (struct iocb*,int) ;
 int ngx_read_file (TYPE_1__*,int *,size_t,int ) ;
 int ngx_set_errno (int ) ;

ssize_t
ngx_file_aio_read(ngx_file_t *file, u_char *buf, size_t size, off_t offset,
    ngx_pool_t *pool)
{
    ngx_err_t err;
    struct iocb *piocb[1];
    ngx_event_t *ev;
    ngx_event_aio_t *aio;

    if (!ngx_file_aio) {
        return ngx_read_file(file, buf, size, offset);
    }

    if (file->aio == ((void*)0) && ngx_file_aio_init(file, pool) != NGX_OK) {
        return NGX_ERROR;
    }

    aio = file->aio;
    ev = &aio->event;

    if (!ev->ready) {
        ngx_log_error(NGX_LOG_ALERT, file->log, 0,
                      "second aio post for \"%V\"", &file->name);
        return NGX_AGAIN;
    }

    ngx_log_debug4(NGX_LOG_DEBUG_CORE, file->log, 0,
                   "aio complete:%d @%O:%uz %V",
                   ev->complete, offset, size, &file->name);

    if (ev->complete) {
        ev->active = 0;
        ev->complete = 0;

        if (aio->res >= 0) {
            ngx_set_errno(0);
            return aio->res;
        }

        ngx_set_errno(-aio->res);

        ngx_log_error(NGX_LOG_CRIT, file->log, ngx_errno,
                      "aio read \"%s\" failed", file->name.data);

        return NGX_ERROR;
    }

    ngx_memzero(&aio->aiocb, sizeof(struct iocb));

    aio->aiocb.aio_data = (uint64_t) (uintptr_t) ev;
    aio->aiocb.aio_lio_opcode = IOCB_CMD_PREAD;
    aio->aiocb.aio_fildes = file->fd;
    aio->aiocb.aio_buf = (uint64_t) (uintptr_t) buf;
    aio->aiocb.aio_nbytes = size;
    aio->aiocb.aio_offset = offset;
    aio->aiocb.aio_flags = IOCB_FLAG_RESFD;
    aio->aiocb.aio_resfd = ngx_eventfd;

    ev->handler = ngx_file_aio_event_handler;

    piocb[0] = &aio->aiocb;

    if (io_submit(ngx_aio_ctx, 1, piocb) == 1) {
        ev->active = 1;
        ev->ready = 0;
        ev->complete = 0;

        return NGX_AGAIN;
    }

    err = ngx_errno;

    if (err == NGX_EAGAIN) {
        return ngx_read_file(file, buf, size, offset);
    }

    ngx_log_error(NGX_LOG_CRIT, file->log, err,
                  "io_submit(\"%V\") failed", &file->name);

    if (err == NGX_ENOSYS) {
        ngx_file_aio = 0;
        return ngx_read_file(file, buf, size, offset);
    }

    return NGX_ERROR;
}

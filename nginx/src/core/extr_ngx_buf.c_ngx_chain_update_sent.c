
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_7__ {TYPE_4__* buf; struct TYPE_7__* next; } ;
typedef TYPE_1__ ngx_chain_t ;
struct TYPE_8__ {size_t pos; size_t last; int file_pos; scalar_t__ in_file; int file_last; } ;


 scalar_t__ ngx_buf_in_memory (TYPE_4__*) ;
 scalar_t__ ngx_buf_size (TYPE_4__*) ;
 scalar_t__ ngx_buf_special (TYPE_4__*) ;

ngx_chain_t *
ngx_chain_update_sent(ngx_chain_t *in, off_t sent)
{
    off_t size;

    for ( ; in; in = in->next) {

        if (ngx_buf_special(in->buf)) {
            continue;
        }

        if (sent == 0) {
            break;
        }

        size = ngx_buf_size(in->buf);

        if (sent >= size) {
            sent -= size;

            if (ngx_buf_in_memory(in->buf)) {
                in->buf->pos = in->buf->last;
            }

            if (in->buf->in_file) {
                in->buf->file_pos = in->buf->file_last;
            }

            continue;
        }

        if (ngx_buf_in_memory(in->buf)) {
            in->buf->pos += (size_t) sent;
        }

        if (in->buf->in_file) {
            in->buf->file_pos += sent;
        }

        break;
    }

    return in;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_21__ {int downstream_error; scalar_t__ (* output_filter ) (int ,TYPE_6__*) ;int downstream_done; int busy_size; TYPE_1__* temp_file; int cyclic_temp_file; scalar_t__ cacheable; TYPE_6__* free; int tag; TYPE_6__* busy; int pool; int output_ctx; int log; TYPE_6__* in; scalar_t__ writing; TYPE_6__* out; scalar_t__ upstream_done; scalar_t__ upstream_error; scalar_t__ upstream_eof; TYPE_5__* downstream; } ;
typedef TYPE_4__ ngx_event_pipe_t ;
struct TYPE_22__ {TYPE_2__* write; int data; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_23__ {TYPE_3__* buf; struct TYPE_23__* next; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_20__ {int last_shadow; scalar_t__ file_last; int * shadow; scalar_t__ temp_file; int * start; int * end; scalar_t__ recycled; scalar_t__ pos; scalar_t__ last; } ;
struct TYPE_19__ {size_t ready; scalar_t__ delayed; } ;
struct TYPE_18__ {scalar_t__ offset; } ;


 scalar_t__ NGX_ABORT ;
 scalar_t__ NGX_BUSY ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 scalar_t__ NGX_OK ;
 int ngx_chain_update_chains (int ,TYPE_6__**,TYPE_6__**,TYPE_6__**,int ) ;
 scalar_t__ ngx_event_pipe_add_free_buf (TYPE_4__*,int *) ;
 scalar_t__ ngx_event_pipe_drain_chains (TYPE_4__*) ;
 scalar_t__ ngx_event_pipe_write_chain_to_temp_file (TYPE_4__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_6__*,int) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int,scalar_t__,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__ stub1 (int ,TYPE_6__*) ;
 scalar_t__ stub2 (int ,TYPE_6__*) ;
 scalar_t__ stub3 (int ,TYPE_6__*) ;

__attribute__((used)) static ngx_int_t
ngx_event_pipe_write_to_downstream(ngx_event_pipe_t *p)
{
    u_char *prev;
    size_t bsize;
    ngx_int_t rc;
    ngx_uint_t flush, flushed, prev_last_shadow;
    ngx_chain_t *out, **ll, *cl;
    ngx_connection_t *downstream;

    downstream = p->downstream;

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, p->log, 0,
                   "pipe write downstream: %d", downstream->write->ready);
    flushed = 0;

    for ( ;; ) {
        if (p->downstream_error) {
            return ngx_event_pipe_drain_chains(p);
        }

        if (p->upstream_eof || p->upstream_error || p->upstream_done) {



            for (cl = p->busy; cl; cl = cl->next) {
                cl->buf->recycled = 0;
            }

            if (p->out) {
                ngx_log_debug0(NGX_LOG_DEBUG_EVENT, p->log, 0,
                               "pipe write downstream flush out");

                for (cl = p->out; cl; cl = cl->next) {
                    cl->buf->recycled = 0;
                }

                rc = p->output_filter(p->output_ctx, p->out);

                if (rc == NGX_ERROR) {
                    p->downstream_error = 1;
                    return ngx_event_pipe_drain_chains(p);
                }

                p->out = ((void*)0);
            }

            if (p->writing) {
                break;
            }

            if (p->in) {
                ngx_log_debug0(NGX_LOG_DEBUG_EVENT, p->log, 0,
                               "pipe write downstream flush in");

                for (cl = p->in; cl; cl = cl->next) {
                    cl->buf->recycled = 0;
                }

                rc = p->output_filter(p->output_ctx, p->in);

                if (rc == NGX_ERROR) {
                    p->downstream_error = 1;
                    return ngx_event_pipe_drain_chains(p);
                }

                p->in = ((void*)0);
            }

            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, p->log, 0,
                           "pipe write downstream done");



            p->downstream_done = 1;
            break;
        }

        if (downstream->data != p->output_ctx
            || !downstream->write->ready
            || downstream->write->delayed)
        {
            break;
        }



        prev = ((void*)0);
        bsize = 0;

        for (cl = p->busy; cl; cl = cl->next) {

            if (cl->buf->recycled) {
                if (prev == cl->buf->start) {
                    continue;
                }

                bsize += cl->buf->end - cl->buf->start;
                prev = cl->buf->start;
            }
        }

        ngx_log_debug1(NGX_LOG_DEBUG_EVENT, p->log, 0,
                       "pipe write busy: %uz", bsize);

        out = ((void*)0);

        if (bsize >= (size_t) p->busy_size) {
            flush = 1;
            goto flush;
        }

        flush = 0;
        ll = ((void*)0);
        prev_last_shadow = 1;

        for ( ;; ) {
            if (p->out) {
                cl = p->out;

                if (cl->buf->recycled) {
                    ngx_log_error(NGX_LOG_ALERT, p->log, 0,
                                  "recycled buffer in pipe out chain");
                }

                p->out = p->out->next;

            } else if (!p->cacheable && !p->writing && p->in) {
                cl = p->in;

                ngx_log_debug3(NGX_LOG_DEBUG_EVENT, p->log, 0,
                               "pipe write buf ls:%d %p %z",
                               cl->buf->last_shadow,
                               cl->buf->pos,
                               cl->buf->last - cl->buf->pos);

                if (cl->buf->recycled && prev_last_shadow) {
                    if (bsize + cl->buf->end - cl->buf->start > p->busy_size) {
                        flush = 1;
                        break;
                    }

                    bsize += cl->buf->end - cl->buf->start;
                }

                prev_last_shadow = cl->buf->last_shadow;

                p->in = p->in->next;

            } else {
                break;
            }

            cl->next = ((void*)0);

            if (out) {
                *ll = cl;
            } else {
                out = cl;
            }
            ll = &cl->next;
        }

    flush:

        ngx_log_debug2(NGX_LOG_DEBUG_EVENT, p->log, 0,
                       "pipe write: out:%p, f:%ui", out, flush);

        if (out == ((void*)0)) {

            if (!flush) {
                break;
            }


            if (flushed++ > 10) {
                return NGX_BUSY;
            }
        }

        rc = p->output_filter(p->output_ctx, out);

        ngx_chain_update_chains(p->pool, &p->free, &p->busy, &out, p->tag);

        if (rc == NGX_ERROR) {
            p->downstream_error = 1;
            return ngx_event_pipe_drain_chains(p);
        }

        for (cl = p->free; cl; cl = cl->next) {

            if (cl->buf->temp_file) {
                if (p->cacheable || !p->cyclic_temp_file) {
                    continue;
                }



                if (cl->buf->file_last == p->temp_file->offset) {
                    p->temp_file->offset = 0;
                }
            }





            if (cl->buf->last_shadow) {
                if (ngx_event_pipe_add_free_buf(p, cl->buf->shadow) != NGX_OK) {
                    return NGX_ABORT;
                }

                cl->buf->last_shadow = 0;
            }

            cl->buf->shadow = ((void*)0);
        }
    }

    return NGX_OK;
}

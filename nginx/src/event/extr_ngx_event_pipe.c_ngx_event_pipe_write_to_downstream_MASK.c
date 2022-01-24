#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int ngx_uint_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_21__ {int downstream_error; scalar_t__ (* output_filter ) (int /*<<< orphan*/ ,TYPE_6__*) ;int downstream_done; int busy_size; TYPE_1__* temp_file; int /*<<< orphan*/  cyclic_temp_file; scalar_t__ cacheable; TYPE_6__* free; int /*<<< orphan*/  tag; TYPE_6__* busy; int /*<<< orphan*/  pool; int /*<<< orphan*/  output_ctx; int /*<<< orphan*/  log; TYPE_6__* in; scalar_t__ writing; TYPE_6__* out; scalar_t__ upstream_done; scalar_t__ upstream_error; scalar_t__ upstream_eof; TYPE_5__* downstream; } ;
typedef  TYPE_4__ ngx_event_pipe_t ;
struct TYPE_22__ {TYPE_2__* write; int /*<<< orphan*/  data; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_23__ {TYPE_3__* buf; struct TYPE_23__* next; } ;
typedef  TYPE_6__ ngx_chain_t ;
struct TYPE_20__ {int last_shadow; scalar_t__ file_last; int /*<<< orphan*/ * shadow; scalar_t__ temp_file; int /*<<< orphan*/ * start; int /*<<< orphan*/ * end; scalar_t__ recycled; scalar_t__ pos; scalar_t__ last; } ;
struct TYPE_19__ {size_t ready; scalar_t__ delayed; } ;
struct TYPE_18__ {scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ NGX_ABORT ; 
 scalar_t__ NGX_BUSY ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_6__**,TYPE_6__**,TYPE_6__**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_6__*) ; 

__attribute__((used)) static ngx_int_t
FUNC12(ngx_event_pipe_t *p)
{
    u_char            *prev;
    size_t             bsize;
    ngx_int_t          rc;
    ngx_uint_t         flush, flushed, prev_last_shadow;
    ngx_chain_t       *out, **ll, *cl;
    ngx_connection_t  *downstream;

    downstream = p->downstream;

    FUNC5(NGX_LOG_DEBUG_EVENT, p->log, 0,
                   "pipe write downstream: %d", downstream->write->ready);

#if (NGX_THREADS)

    if (p->writing) {
        rc = ngx_event_pipe_write_chain_to_temp_file(p);

        if (rc == NGX_ABORT) {
            return NGX_ABORT;
        }
    }

#endif

    flushed = 0;

    for ( ;; ) {
        if (p->downstream_error) {
            return FUNC2(p);
        }

        if (p->upstream_eof || p->upstream_error || p->upstream_done) {

            /* pass the p->out and p->in chains to the output filter */

            for (cl = p->busy; cl; cl = cl->next) {
                cl->buf->recycled = 0;
            }

            if (p->out) {
                FUNC4(NGX_LOG_DEBUG_EVENT, p->log, 0,
                               "pipe write downstream flush out");

                for (cl = p->out; cl; cl = cl->next) {
                    cl->buf->recycled = 0;
                }

                rc = p->output_filter(p->output_ctx, p->out);

                if (rc == NGX_ERROR) {
                    p->downstream_error = 1;
                    return FUNC2(p);
                }

                p->out = NULL;
            }

            if (p->writing) {
                break;
            }

            if (p->in) {
                FUNC4(NGX_LOG_DEBUG_EVENT, p->log, 0,
                               "pipe write downstream flush in");

                for (cl = p->in; cl; cl = cl->next) {
                    cl->buf->recycled = 0;
                }

                rc = p->output_filter(p->output_ctx, p->in);

                if (rc == NGX_ERROR) {
                    p->downstream_error = 1;
                    return FUNC2(p);
                }

                p->in = NULL;
            }

            FUNC4(NGX_LOG_DEBUG_EVENT, p->log, 0,
                           "pipe write downstream done");

            /* TODO: free unused bufs */

            p->downstream_done = 1;
            break;
        }

        if (downstream->data != p->output_ctx
            || !downstream->write->ready
            || downstream->write->delayed)
        {
            break;
        }

        /* bsize is the size of the busy recycled bufs */

        prev = NULL;
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

        FUNC5(NGX_LOG_DEBUG_EVENT, p->log, 0,
                       "pipe write busy: %uz", bsize);

        out = NULL;

        if (bsize >= (size_t) p->busy_size) {
            flush = 1;
            goto flush;
        }

        flush = 0;
        ll = NULL;
        prev_last_shadow = 1;

        for ( ;; ) {
            if (p->out) {
                cl = p->out;

                if (cl->buf->recycled) {
                    FUNC8(NGX_LOG_ALERT, p->log, 0,
                                  "recycled buffer in pipe out chain");
                }

                p->out = p->out->next;

            } else if (!p->cacheable && !p->writing && p->in) {
                cl = p->in;

                FUNC7(NGX_LOG_DEBUG_EVENT, p->log, 0,
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

            cl->next = NULL;

            if (out) {
                *ll = cl;
            } else {
                out = cl;
            }
            ll = &cl->next;
        }

    flush:

        FUNC6(NGX_LOG_DEBUG_EVENT, p->log, 0,
                       "pipe write: out:%p, f:%ui", out, flush);

        if (out == NULL) {

            if (!flush) {
                break;
            }

            /* a workaround for AIO */
            if (flushed++ > 10) {
                return NGX_BUSY;
            }
        }

        rc = p->output_filter(p->output_ctx, out);

        FUNC0(p->pool, &p->free, &p->busy, &out, p->tag);

        if (rc == NGX_ERROR) {
            p->downstream_error = 1;
            return FUNC2(p);
        }

        for (cl = p->free; cl; cl = cl->next) {

            if (cl->buf->temp_file) {
                if (p->cacheable || !p->cyclic_temp_file) {
                    continue;
                }

                /* reset p->temp_offset if all bufs had been sent */

                if (cl->buf->file_last == p->temp_file->offset) {
                    p->temp_file->offset = 0;
                }
            }

            /* TODO: free buf if p->free_bufs && upstream done */

            /* add the free shadow raw buf to p->free_raw_bufs */

            if (cl->buf->last_shadow) {
                if (FUNC1(p, cl->buf->shadow) != NGX_OK) {
                    return NGX_ABORT;
                }

                cl->buf->last_shadow = 0;
            }

            cl->buf->shadow = NULL;
        }
    }

    return NGX_OK;
}
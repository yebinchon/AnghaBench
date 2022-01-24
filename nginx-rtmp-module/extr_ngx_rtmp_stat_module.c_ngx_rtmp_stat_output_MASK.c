#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_9__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_10__ {TYPE_3__* buf; struct TYPE_10__* next; } ;
typedef  TYPE_2__ ngx_chain_t ;
struct TYPE_11__ {scalar_t__ last; scalar_t__ end; int /*<<< orphan*/ * pos; } ;
typedef  TYPE_3__ ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_RTMP_STAT_BUFSIZE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,void*,size_t) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 void* FUNC5 (TYPE_1__*,void*,size_t) ; 

__attribute__((used)) static void
FUNC6(ngx_http_request_t *r, ngx_chain_t ***lll,
        void *data, size_t len, ngx_uint_t escape)
{
    ngx_chain_t        *cl;
    ngx_buf_t          *b;
    size_t              real_len;

    if (len == 0) {
        return;
    }

    if (escape) {
        data = FUNC5(r, data, len);
        if (data == NULL) {
            return;
        }
    }

    real_len = escape
        ? len + FUNC3(NULL, data, len)
        : len;

    cl = **lll;
    if (cl && cl->buf->last + real_len > cl->buf->end) {
        *lll = &cl->next;
    }

    if (**lll == NULL) {
        cl = FUNC0(r->pool);
        if (cl == NULL) {
            return;
        }
        b = FUNC2(r->pool,
                FUNC4(NGX_RTMP_STAT_BUFSIZE, real_len));
        if (b == NULL || b->pos == NULL) {
            return;
        }
        cl->next = NULL;
        cl->buf = b;
        **lll = cl;
    }

    b = (**lll)->buf;

    if (escape) {
        b->last = (u_char *)FUNC3(b->last, data, len);
    } else {
        b->last = FUNC1(b->last, data, len);
    }
}
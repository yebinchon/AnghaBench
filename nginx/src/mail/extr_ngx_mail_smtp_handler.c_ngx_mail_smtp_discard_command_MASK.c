#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_12__ {TYPE_1__* buffer; } ;
typedef  TYPE_2__ ngx_mail_session_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_13__ {scalar_t__ (* recv ) (TYPE_3__*,scalar_t__,scalar_t__) ;int /*<<< orphan*/  read; } ;
typedef  TYPE_3__ ngx_connection_t ;
struct TYPE_11__ {scalar_t__ last; scalar_t__ end; scalar_t__ pos; scalar_t__ start; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_mail_session_t *s, ngx_connection_t *c,
    char *err)
{
    ssize_t    n;

    n = c->recv(c, s->buffer->last, s->buffer->end - s->buffer->last);

    if (n == NGX_ERROR || n == 0) {
        FUNC1(c);
        return NGX_ERROR;
    }

    if (n > 0) {
        s->buffer->last += n;
    }

    if (n == NGX_AGAIN) {
        if (FUNC0(c->read, 0) != NGX_OK) {
            FUNC2(s);
            return NGX_ERROR;
        }

        return NGX_AGAIN;
    }

    FUNC3(s, c, err);

    s->buffer->pos = s->buffer->start;
    s->buffer->last = s->buffer->start;

    return NGX_OK;
}
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
typedef  int /*<<< orphan*/  ngx_str_t ;
struct TYPE_9__ {int /*<<< orphan*/  client_buffer_size; } ;
typedef  TYPE_1__ ngx_mail_smtp_srv_conf_t ;
struct TYPE_10__ {int /*<<< orphan*/ * buffer; int /*<<< orphan*/  args; } ;
typedef  TYPE_2__ ngx_mail_session_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_11__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_connection_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  ngx_mail_smtp_module ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_mail_smtp_srv_conf_t  *sscf;

    if (FUNC0(&s->args, c->pool, 2, sizeof(ngx_str_t)) == NGX_ERROR) {
        FUNC3(s);
        return NGX_ERROR;
    }

    sscf = FUNC2(s, ngx_mail_smtp_module);

    s->buffer = FUNC1(c->pool, sscf->client_buffer_size);
    if (s->buffer == NULL) {
        FUNC3(s);
        return NGX_ERROR;
    }

    return NGX_OK;
}
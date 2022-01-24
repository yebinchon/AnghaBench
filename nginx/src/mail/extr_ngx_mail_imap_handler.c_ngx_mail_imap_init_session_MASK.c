#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  out; } ;
typedef  TYPE_1__ ngx_mail_session_t ;
struct TYPE_12__ {int /*<<< orphan*/  timeout; } ;
typedef  TYPE_2__ ngx_mail_core_srv_conf_t ;
struct TYPE_13__ {int /*<<< orphan*/  write; TYPE_9__* read; } ;
typedef  TYPE_3__ ngx_connection_t ;
struct TYPE_14__ {int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  imap_greeting ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_mail_core_module ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_mail_imap_init_protocol ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_mail_core_srv_conf_t  *cscf;

    cscf = FUNC3(s, ngx_mail_core_module);

    FUNC5(&s->out, imap_greeting);

    c->read->handler = ngx_mail_imap_init_protocol;

    FUNC0(c->read, cscf->timeout);

    if (FUNC1(c->read, 0) != NGX_OK) {
        FUNC2(c);
    }

    FUNC4(c->write);
}
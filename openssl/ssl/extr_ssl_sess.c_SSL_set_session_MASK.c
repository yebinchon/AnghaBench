#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ method; TYPE_2__* session; int /*<<< orphan*/  verify_result; TYPE_1__* ctx; } ;
struct TYPE_11__ {int /*<<< orphan*/  verify_result; } ;
struct TYPE_10__ {scalar_t__ method; } ;
typedef  TYPE_2__ SSL_SESSION ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

int FUNC4(SSL *s, SSL_SESSION *session)
{
    FUNC3(s);
    if (s->ctx->method != s->method) {
        if (!FUNC2(s, s->ctx->method))
            return 0;
    }

    if (session != NULL) {
        FUNC1(session);
        s->verify_result = session->verify_result;
    }
    FUNC0(s->session);
    s->session = session;

    return 1;
}
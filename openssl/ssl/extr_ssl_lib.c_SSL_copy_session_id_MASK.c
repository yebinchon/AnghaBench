#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  references; } ;
struct TYPE_12__ {scalar_t__ sid_ctx_length; int /*<<< orphan*/  sid_ctx; TYPE_5__* cert; TYPE_1__* method; } ;
struct TYPE_11__ {scalar_t__ (* ssl_new ) (TYPE_2__*) ;int /*<<< orphan*/  (* ssl_free ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 

int FUNC7(SSL *t, const SSL *f)
{
    int i;
    /* Do we need to to SSL locking? */
    if (!FUNC2(t, FUNC1(f))) {
        return 0;
    }

    /*
     * what if we are setup for one protocol version but want to talk another
     */
    if (t->method != f->method) {
        t->method->ssl_free(t);
        t->method = f->method;
        if (t->method->ssl_new(t) == 0)
            return 0;
    }

    FUNC0(&f->cert->references, &i, f->cert->lock);
    FUNC4(t->cert);
    t->cert = f->cert;
    if (!FUNC3(t, f->sid_ctx, (int)f->sid_ctx_length)) {
        return 0;
    }

    return 1;
}
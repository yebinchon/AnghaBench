#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tls_crypt_v2_wkc; int /*<<< orphan*/  tls_wrap_key; } ;
struct TYPE_7__ {TYPE_4__ ks; } ;
struct TYPE_6__ {scalar_t__ persist_key; } ;
struct context {TYPE_3__ c1; TYPE_2__ options; TYPE_1__* sig; } ;
struct TYPE_5__ {scalar_t__ signal_received; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SIGUSR1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 

__attribute__((used)) static void
FUNC5(struct context *c, bool free_ssl_ctx)
{
    /*
     * always free the tls_auth/crypt key. If persist_key is true, the key will
     * be reloaded from memory (pre-cached)
     */
    FUNC3(&c->c1.ks.tls_wrap_key);
    FUNC0(c->c1.ks.tls_wrap_key);
    FUNC1(&c->c1.ks.tls_crypt_v2_wkc);
    FUNC2(&c->c1.ks.tls_crypt_v2_wkc);

    if (!(c->sig->signal_received == SIGUSR1 && c->options.persist_key))
    {
        FUNC4(&c->c1.ks, free_ssl_ctx);
    }
}
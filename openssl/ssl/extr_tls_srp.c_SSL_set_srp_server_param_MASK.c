#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * v; int /*<<< orphan*/ * s; int /*<<< orphan*/ * g; int /*<<< orphan*/ * N; int /*<<< orphan*/ * info; } ;
struct TYPE_5__ {TYPE_1__ srp_ctx; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 void* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

int FUNC5(SSL *s, const BIGNUM *N, const BIGNUM *g,
                             BIGNUM *sa, BIGNUM *v, char *info)
{
    if (N != NULL) {
        if (s->srp_ctx.N != NULL) {
            if (!FUNC0(s->srp_ctx.N, N)) {
                FUNC2(s->srp_ctx.N);
                s->srp_ctx.N = NULL;
            }
        } else
            s->srp_ctx.N = FUNC1(N);
    }
    if (g != NULL) {
        if (s->srp_ctx.g != NULL) {
            if (!FUNC0(s->srp_ctx.g, g)) {
                FUNC2(s->srp_ctx.g);
                s->srp_ctx.g = NULL;
            }
        } else
            s->srp_ctx.g = FUNC1(g);
    }
    if (sa != NULL) {
        if (s->srp_ctx.s != NULL) {
            if (!FUNC0(s->srp_ctx.s, sa)) {
                FUNC2(s->srp_ctx.s);
                s->srp_ctx.s = NULL;
            }
        } else
            s->srp_ctx.s = FUNC1(sa);
    }
    if (v != NULL) {
        if (s->srp_ctx.v != NULL) {
            if (!FUNC0(s->srp_ctx.v, v)) {
                FUNC2(s->srp_ctx.v);
                s->srp_ctx.v = NULL;
            }
        } else
            s->srp_ctx.v = FUNC1(v);
    }
    if (info != NULL) {
        if (s->srp_ctx.info)
            FUNC3(s->srp_ctx.info);
        if ((s->srp_ctx.info = FUNC4(info)) == NULL)
            return -1;
    }

    if (!(s->srp_ctx.N) ||
        !(s->srp_ctx.g) || !(s->srp_ctx.s) || !(s->srp_ctx.v))
        return -1;

    return 1;
}
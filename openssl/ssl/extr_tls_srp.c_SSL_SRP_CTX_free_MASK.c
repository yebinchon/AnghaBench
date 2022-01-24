#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  strength; int /*<<< orphan*/  v; int /*<<< orphan*/  b; int /*<<< orphan*/  a; int /*<<< orphan*/  A; int /*<<< orphan*/  B; int /*<<< orphan*/  s; int /*<<< orphan*/  g; int /*<<< orphan*/  N; int /*<<< orphan*/  info; int /*<<< orphan*/  login; } ;
struct ssl_st {TYPE_1__ srp_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRP_MINIMAL_N ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct ssl_st *s)
{
    if (s == NULL)
        return 0;
    FUNC1(s->srp_ctx.login);
    FUNC1(s->srp_ctx.info);
    FUNC0(s->srp_ctx.N);
    FUNC0(s->srp_ctx.g);
    FUNC0(s->srp_ctx.s);
    FUNC0(s->srp_ctx.B);
    FUNC0(s->srp_ctx.A);
    FUNC0(s->srp_ctx.a);
    FUNC0(s->srp_ctx.b);
    FUNC0(s->srp_ctx.v);
    FUNC2(&s->srp_ctx, 0, sizeof(s->srp_ctx));
    s->srp_ctx.strength = SRP_MINIMAL_N;
    return 1;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  g; int /*<<< orphan*/  N; } ;
struct TYPE_6__ {int /*<<< orphan*/ * v; int /*<<< orphan*/ * s; void* g; void* N; } ;
struct TYPE_7__ {TYPE_1__ srp_ctx; } ;
typedef  TYPE_2__ SSL ;
typedef  TYPE_3__ SRP_gN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (char const*) ; 

int FUNC4(SSL *s, const char *user, const char *pass,
                                const char *grp)
{
    SRP_gN *GN = FUNC3(grp);
    if (GN == NULL)
        return -1;
    s->srp_ctx.N = FUNC1(GN->N);
    s->srp_ctx.g = FUNC1(GN->g);
    FUNC0(s->srp_ctx.v);
    s->srp_ctx.v = NULL;
    FUNC0(s->srp_ctx.s);
    s->srp_ctx.s = NULL;
    if (!FUNC2
        (user, pass, &s->srp_ctx.s, &s->srp_ctx.v, GN->N, GN->g))
        return -1;

    return 1;
}
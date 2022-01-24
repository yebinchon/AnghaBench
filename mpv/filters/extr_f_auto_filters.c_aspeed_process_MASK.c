#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_filter_command {scalar_t__ speed; int /*<<< orphan*/  type; } ;
struct mp_filter {struct aspeed_priv* priv; } ;
struct TYPE_4__ {scalar_t__ filter; } ;
struct aspeed_priv {TYPE_1__ sub; scalar_t__ cur_speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  MP_FILTER_COMMAND_SET_SPEED ; 
 int /*<<< orphan*/  MP_OUTPUT_CHAIN_AUDIO ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*,char*) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct mp_filter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct mp_filter_command*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(struct mp_filter *f)
{
    struct aspeed_priv *p = f->priv;

    if (!FUNC7(&p->sub))
        return;

    if (FUNC2(p->cur_speed - 1.0) < 1e-8) {
        if (p->sub.filter)
            FUNC1(f, "removing scaletempo\n");
        if (!FUNC6(&p->sub))
            return;
    } else if (!p->sub.filter) {
        FUNC1(f, "adding scaletempo\n");
        p->sub.filter =
            FUNC3(f, MP_OUTPUT_CHAIN_AUDIO, "scaletempo", NULL);
        if (!p->sub.filter) {
            FUNC0(f, "could not create scaletempo filter\n");
            FUNC5(&p->sub);
            return;
        }
    }

    if (p->sub.filter) {
        struct mp_filter_command cmd = {
            .type = MP_FILTER_COMMAND_SET_SPEED,
            .speed = p->cur_speed,
        };
        FUNC4(p->sub.filter, &cmd);
    }

    FUNC5(&p->sub);
}
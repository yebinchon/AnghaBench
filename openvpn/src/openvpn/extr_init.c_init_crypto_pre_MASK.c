#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ use_prediction_resistance; scalar_t__ packet_id_file; scalar_t__ engine; } ;
struct TYPE_3__ {int /*<<< orphan*/  pid_persist; } ;
struct context {TYPE_2__ options; TYPE_1__ c1; } ;

/* Variables and functions */
 unsigned int const CF_LOAD_PERSISTED_PACKET_ID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct context *c, const unsigned int flags)
{
    if (c->options.engine)
    {
        FUNC0(c->options.engine);
    }

    if (flags & CF_LOAD_PERSISTED_PACKET_ID)
    {
        /* load a persisted packet-id for cross-session replay-protection */
        if (c->options.packet_id_file)
        {
            FUNC1(&c->c1.pid_persist, c->options.packet_id_file);
        }
    }

#ifdef ENABLE_PREDICTION_RESISTANCE
    if (c->options.use_prediction_resistance)
    {
        rand_ctx_enable_prediction_resistance();
    }
#endif
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct priv {int /*<<< orphan*/  graph_latency_max; int /*<<< orphan*/ * ports; } ;
struct ao {struct priv* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  max; } ;
typedef  TYPE_1__ jack_latency_range_t ;

/* Variables and functions */
 int /*<<< orphan*/  JackPlaybackLatency ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(void *arg)
{
    struct ao *ao = arg;
    struct priv *p = ao->priv;

    jack_latency_range_t jack_latency_range;
    FUNC1(p->ports[0], JackPlaybackLatency,
                                &jack_latency_range);
    FUNC0(&p->graph_latency_max, jack_latency_range.max);

    return 0;
}
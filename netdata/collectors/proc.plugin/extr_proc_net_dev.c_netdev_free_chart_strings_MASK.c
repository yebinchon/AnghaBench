#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct netdev {scalar_t__ chart_family; scalar_t__ chart_id_net_packets; scalar_t__ chart_id_net_fifo; scalar_t__ chart_id_net_events; scalar_t__ chart_id_net_errors; scalar_t__ chart_id_net_drops; scalar_t__ chart_id_net_compressed; scalar_t__ chart_id_net_bytes; scalar_t__ chart_type_net_packets; scalar_t__ chart_type_net_fifo; scalar_t__ chart_type_net_events; scalar_t__ chart_type_net_errors; scalar_t__ chart_type_net_drops; scalar_t__ chart_type_net_compressed; scalar_t__ chart_type_net_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static void FUNC1(struct netdev *d) {
    FUNC0((void *)d->chart_type_net_bytes);
    FUNC0((void *)d->chart_type_net_compressed);
    FUNC0((void *)d->chart_type_net_drops);
    FUNC0((void *)d->chart_type_net_errors);
    FUNC0((void *)d->chart_type_net_events);
    FUNC0((void *)d->chart_type_net_fifo);
    FUNC0((void *)d->chart_type_net_packets);

    FUNC0((void *)d->chart_id_net_bytes);
    FUNC0((void *)d->chart_id_net_compressed);
    FUNC0((void *)d->chart_id_net_drops);
    FUNC0((void *)d->chart_id_net_errors);
    FUNC0((void *)d->chart_id_net_events);
    FUNC0((void *)d->chart_id_net_fifo);
    FUNC0((void *)d->chart_id_net_packets);

    FUNC0((void *)d->chart_family);
}
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
struct TYPE_4__ {TYPE_2__* udp; } ;
struct TYPE_5__ {struct TYPE_5__* http_payload_data; struct TYPE_5__* espconn_dns_udp; TYPE_1__ proto; int /*<<< orphan*/  shutdown_timer; int /*<<< orphan*/  check_station_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* state ; 

__attribute__((used)) static void FUNC4(void)
{
  FUNC0("enduser_setup_free");

  if (state == NULL)
  {
    return;
  }

  /* Make sure no running timers are left. */
  FUNC3(&(state->check_station_timer));
  FUNC3(&(state->shutdown_timer));

  if (state->espconn_dns_udp != NULL)
  {
    if (state->espconn_dns_udp->proto.udp != NULL)
    {
      FUNC1(state->espconn_dns_udp->proto.udp);
    }
    FUNC1(state->espconn_dns_udp);
  }

  FUNC1(state->http_payload_data);

  FUNC2 ();

  FUNC1(state);
  state = NULL;
}
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
struct TYPE_3__ {int ipv6_medium_evt_id; } ;
typedef  TYPE_1__ ipv6_medium_evt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  IPV6_MEDIUM_EVT_CONN_DOWN 129 
#define  IPV6_MEDIUM_EVT_CONN_UP 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_ONE ; 
 int /*<<< orphan*/  LED_TWO ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(ipv6_medium_evt_t * p_ipv6_medium_evt)
{
  switch (p_ipv6_medium_evt->ipv6_medium_evt_id)
  {
    case IPV6_MEDIUM_EVT_CONN_UP:
      {
        FUNC0("[APPL]: Physical layer: connected.\r\n");
        FUNC1(LED_ONE);
        FUNC2(LED_TWO);
        break;
      }
    case IPV6_MEDIUM_EVT_CONN_DOWN:
      {
        FUNC0("[APPL]: Physical layer: disconnected.\r\n");
        FUNC3();
        break;
      }
    default:
      {
        break;
      }
  }
}
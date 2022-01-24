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
struct TYPE_4__ {int evt_id; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
typedef  TYPE_2__ ble_evt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  BLE_GAP_EVT_CONNECTED 129 
#define  BLE_GAP_EVT_DISCONNECTED 128 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(ble_evt_t * p_ble_evt)
{
  switch (p_ble_evt->header.evt_id)
  {
    case BLE_GAP_EVT_CONNECTED:
      FUNC0 ("[APPL]: Connected.\r\n");
      break;
    case BLE_GAP_EVT_DISCONNECTED:
      FUNC0 ("[APPL]: Disconnected.\r\n");
      FUNC1();
      break;
    default:
      break;
  }
}
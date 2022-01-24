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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  APP_TIMER_MODE_REPEATED ; 
 int /*<<< orphan*/  APP_TIMER_OP_QUEUE_SIZE ; 
 int /*<<< orphan*/  APP_TIMER_PRESCALER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iot_timer_tick_callback ; 
 int /*<<< orphan*/  m_iot_timer_tick_src_id ; 

__attribute__((used)) static void FUNC3(void)
{
  uint32_t err_code;

  // Initialize timer module.
  FUNC1(APP_TIMER_PRESCALER, APP_TIMER_OP_QUEUE_SIZE, false);

  // Create a sys timer.
  err_code = FUNC2(&m_iot_timer_tick_src_id,
      APP_TIMER_MODE_REPEATED,
      iot_timer_tick_callback);
  FUNC0(err_code);
}
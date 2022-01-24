#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int use_scheduler; int /*<<< orphan*/  commissioning_power_off_cb; int /*<<< orphan*/  commissioning_id_mode_cb; int /*<<< orphan*/  ipv6_medium_error_handler; int /*<<< orphan*/  ipv6_medium_evt_handler; } ;
typedef  TYPE_1__ ipv6_medium_init_params_t ;
typedef  int /*<<< orphan*/  ipv6_medium_init_params ;
struct TYPE_10__ {int* identifier; } ;
typedef  TYPE_2__ eui48_t ;
struct TYPE_11__ {int /*<<< orphan*/  ipv6_medium_instance_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EUI_48_SIZE ; 
 int /*<<< orphan*/  IPV6_MEDIUM_ID_BLE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  commissioning_id_mode_cb ; 
 int /*<<< orphan*/  commissioning_power_off_cb ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_4__ m_ipv6_medium ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  on_ipv6_medium_error ; 
 int /*<<< orphan*/  on_ipv6_medium_evt ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

void FUNC15(void) {
  uint32_t err_code;

  //Initialize.
  FUNC2();
  FUNC10();
  FUNC14();
  FUNC5();

#ifdef COMMISSIONING_ENABLED
  err_code = pstorage_init();
  APP_ERROR_CHECK(err_code);

  buttons_init();
#endif // COMMISSIONING_ENABLED

  static ipv6_medium_init_params_t ipv6_medium_init_params;
  FUNC11(&ipv6_medium_init_params, 0x00, sizeof(ipv6_medium_init_params));
  ipv6_medium_init_params.ipv6_medium_evt_handler    = on_ipv6_medium_evt;
  ipv6_medium_init_params.ipv6_medium_error_handler  = on_ipv6_medium_error;
  ipv6_medium_init_params.use_scheduler              = true;
#ifdef COMMISSIONING_ENABLED
  ipv6_medium_init_params.commissioning_id_mode_cb   = commissioning_id_mode_cb;
  ipv6_medium_init_params.commissioning_power_off_cb = commissioning_power_off_cb;
#endif // COMMISSIONING_ENABLED

  err_code = FUNC9(&ipv6_medium_init_params, \
      IPV6_MEDIUM_ID_BLE,       \
      &m_ipv6_medium);
  FUNC1(err_code);

  eui48_t ipv6_medium_eui48;
  err_code = FUNC7(m_ipv6_medium.ipv6_medium_instance_id, \
      &ipv6_medium_eui48);

  ipv6_medium_eui48.identifier[EUI_48_SIZE - 1] = 0x00;

  err_code = FUNC8(m_ipv6_medium.ipv6_medium_instance_id, \
      &ipv6_medium_eui48);
  FUNC1(err_code);

  FUNC6();
  FUNC13();

  //Start execution.
  FUNC4();

  FUNC0("BLE init done\n");
}
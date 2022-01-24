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
typedef  int /*<<< orphan*/  pwm2_module_data_t ;

/* Variables and functions */
 int GPIO_PIN_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * pin_func ; 
 int /*<<< orphan*/ * pin_mux ; 

__attribute__((used)) static void FUNC3(pwm2_module_data_t *moduleData) {
  for (int i = 1; i < GPIO_PIN_NUM; i++) {
    if (FUNC2(moduleData, i)) {
      FUNC0(pin_mux[i], pin_func[i]);  // set pin as gpio
      FUNC1(pin_mux[i]);                 // set pin pullup on
    }
  }
}
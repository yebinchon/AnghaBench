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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CTRL_HI_X ; 
 int CTRL_HI_Y ; 
 int CTRL_LO_DFR ; 
 int CTRL_LO_SER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_STATUS_W1TC_ADDRESS ; 
 int /*<<< orphan*/  PLATFORM_GPIO_HIGH ; 
 int /*<<< orphan*/  PLATFORM_GPIO_LOW ; 
 int /*<<< orphan*/  _cs_pin ; 
 size_t _irq_pin ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/ * pin_num ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(uint16_t *vi, uint16_t *vj) {
  // Implementation based on TI Technical Note http://www.ti.com/lit/an/sbaa036/sbaa036.pdf

  // Disable interrupt: reading position generates false interrupt
  FUNC1();

  FUNC5(_cs_pin, PLATFORM_GPIO_LOW);
  FUNC6(1, 8 , CTRL_HI_X | CTRL_LO_DFR);  // Send first control int
  *vi = FUNC4(CTRL_HI_X | CTRL_LO_DFR, 255);
  *vj = FUNC4(CTRL_HI_Y | CTRL_LO_DFR, 255);

  // Turn off ADC by issuing one more read (throwaway)
  // This needs to be done, because PD=0b11 (needed for MODE_DFR) will disable PENIRQ
  FUNC6(1, 8 , 0);  // Maintain 16-clocks/conversion; _readLoop always ends after issuing a control int
  FUNC6(1, 8 , CTRL_HI_Y | CTRL_LO_SER);
  FUNC7(0);  // Flush last read, just to be sure

  FUNC5(_cs_pin, PLATFORM_GPIO_HIGH);

  // Clear interrupt status
  FUNC3(GPIO_STATUS_W1TC_ADDRESS, FUNC0(pin_num[_irq_pin]));
  // Enable interrupt again
  FUNC2();
}
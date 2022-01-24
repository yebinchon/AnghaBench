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

/* Variables and functions */
 int /*<<< orphan*/  AUX_MU_IIR_REG ; 
 int /*<<< orphan*/  AUX_MU_IO_REG ; 
 int /*<<< orphan*/  MU_IIR_RX_CLR ; 
 int MU_IIR_RX_READY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

void FUNC3(void) {
  if (FUNC0(AUX_MU_IIR_REG) & MU_IIR_RX_READY) {
    char c = FUNC0(AUX_MU_IO_REG) & 0xFF;
    FUNC1(AUX_MU_IIR_REG, MU_IIR_RX_CLR);

    FUNC2(c);
  }
}
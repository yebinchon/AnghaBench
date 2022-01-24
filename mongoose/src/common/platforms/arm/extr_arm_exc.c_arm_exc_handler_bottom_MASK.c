#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct arm_gdb_reg_file {int /*<<< orphan*/  fpscr; scalar_t__ d; int /*<<< orphan*/  psp; int /*<<< orphan*/  msp; int /*<<< orphan*/  xpsr; int /*<<< orphan*/  pc; int /*<<< orphan*/  lr; int /*<<< orphan*/  sp; int /*<<< orphan*/ * r; } ;
struct arm_exc_frame {int /*<<< orphan*/  s; int /*<<< orphan*/  fpscr; } ;
struct TYPE_2__ {scalar_t__ CTRL; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* MPU ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct arm_gdb_reg_file* s_rf ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

void FUNC12(uint8_t isr_no, struct arm_exc_frame *ef,
                            struct arm_gdb_reg_file *rf) {
  char buf[8];
  const char *name;
#if __MPU_PRESENT
  MPU->CTRL = 0;  // Disable MPU.
#endif
  FUNC8();
  s_rf = rf;
  switch (isr_no) {
    case 0:
      name = "ThreadMode";
      break;
    case 1:
    case 7:
    case 8:
    case 9:
    case 10:
    case 13:
      name = "Reserved";
      break;
    case 2:
      name = "NMI";
      break;
    case 3:
      name = "HardFault";
      break;
    case 4:
      name = "MemManage";
      break;
    case 5:
      name = "BusFault";
      break;
    case 6:
      name = "UsageFault";
      break;
    case 11:
      name = "SVCall";
      break;
    case 12:
      name = "ReservedDebug";
      break;
    case 14:
      name = "PendSV";
      break;
    case 15:
      name = "SysTick";
      break;
    default: {
#ifndef MGOS_BOOT_BUILD
      FUNC11(buf, "IRQ%u", isr_no - 16);
#endif
      name = buf;
    }
  }
  FUNC3("\n\n--- Exception %u (%s) ---\n", isr_no, name);
  if (rf != NULL) {
    FUNC3(
        "  R%d:  0x%08lx  R%d:  0x%08lx  R%d:  0x%08lx  R%d:  0x%08lx\n", 0,
        rf->r[0], 1, rf->r[1], 2, rf->r[2], 3, rf->r[3]);
    FUNC3(
        "  R%d:  0x%08lx  R%d:  0x%08lx  R%d:  0x%08lx  R%d:  0x%08lx\n", 4,
        rf->r[4], 5, rf->r[5], 6, rf->r[6], 7, rf->r[7]);
    FUNC3("  R8:  0x%08lx  R9:  0x%08lx  R10: 0x%08lx  R11: 0x%08lx\n",
                   rf->r[8], rf->r[9], rf->r[10], rf->r[11]);
    FUNC3("  R12: 0x%08lx  SP:  0x%08lx   LR: 0x%08lx  PC:  0x%08lx\n",
                   rf->r[12], rf->sp, rf->lr, rf->pc);
    FUNC3("  PSR: 0x%08lx MSP:  0x%08lx  PSP: 0x%08lx\n", rf->xpsr,
                   rf->msp, rf->psp);
  }
#if __FPU_PRESENT
  memset(rf->d, 0, sizeof(rf->d));
#if !defined(MGOS_BOOT_BUILD)
  rf->fpscr = ef->fpscr;
  memcpy((uint8_t *) rf->d, ef->s, sizeof(ef->s));
  print_fpu_regs((uint32_t *) rf->d, 0, ARRAY_SIZE(ef->s));
  save_s16_s31(ef->s);
  memcpy(((uint8_t *) rf->d) + sizeof(ef->s), ef->s, sizeof(ef->s));
  print_fpu_regs((uint32_t *) (((uint8_t *) rf->d) + sizeof(ef->s)), 16,
                 ARRAY_SIZE(ef->s));
  mgos_cd_putc('\n');
  mgos_cd_printf("FPSCR: 0x%08lx\n", rf->fpscr);
#else
  rf->fpscr = 0;
#endif
#endif
#if MGOS_ENABLE_CORE_DUMP
  mgos_cd_write();
#endif
#ifdef MGOS_HALT_ON_EXCEPTION
  mgos_cd_printf("Halting\n");
  while (1) {
    mgos_wdt_feed();
  }
#else
  FUNC3("Rebooting\n");
  FUNC6();
#endif
  (void) ef;
}
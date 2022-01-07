
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct arm_gdb_reg_file {int fpscr; scalar_t__ d; int psp; int msp; int xpsr; int pc; int lr; int sp; int * r; } ;
struct arm_exc_frame {int s; int fpscr; } ;
struct TYPE_2__ {scalar_t__ CTRL; } ;


 int ARRAY_SIZE (int ) ;
 TYPE_1__* MPU ;
 int memcpy (int*,int ,int) ;
 int memset (scalar_t__,int ,int) ;
 int mgos_cd_printf (char*,...) ;
 int mgos_cd_putc (char) ;
 int mgos_cd_write () ;
 int mgos_dev_system_restart () ;
 int mgos_wdt_feed () ;
 int portDISABLE_INTERRUPTS () ;
 int print_fpu_regs (int *,int,int ) ;
 struct arm_gdb_reg_file* s_rf ;
 int save_s16_s31 (int ) ;
 int sprintf (char*,char*,int) ;

void arm_exc_handler_bottom(uint8_t isr_no, struct arm_exc_frame *ef,
                            struct arm_gdb_reg_file *rf) {
  char buf[8];
  const char *name;



  portDISABLE_INTERRUPTS();
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

      sprintf(buf, "IRQ%u", isr_no - 16);

      name = buf;
    }
  }
  mgos_cd_printf("\n\n--- Exception %u (%s) ---\n", isr_no, name);
  if (rf != ((void*)0)) {
    mgos_cd_printf(
        "  R%d:  0x%08lx  R%d:  0x%08lx  R%d:  0x%08lx  R%d:  0x%08lx\n", 0,
        rf->r[0], 1, rf->r[1], 2, rf->r[2], 3, rf->r[3]);
    mgos_cd_printf(
        "  R%d:  0x%08lx  R%d:  0x%08lx  R%d:  0x%08lx  R%d:  0x%08lx\n", 4,
        rf->r[4], 5, rf->r[5], 6, rf->r[6], 7, rf->r[7]);
    mgos_cd_printf("  R8:  0x%08lx  R9:  0x%08lx  R10: 0x%08lx  R11: 0x%08lx\n",
                   rf->r[8], rf->r[9], rf->r[10], rf->r[11]);
    mgos_cd_printf("  R12: 0x%08lx  SP:  0x%08lx   LR: 0x%08lx  PC:  0x%08lx\n",
                   rf->r[12], rf->sp, rf->lr, rf->pc);
    mgos_cd_printf("  PSR: 0x%08lx MSP:  0x%08lx  PSP: 0x%08lx\n", rf->xpsr,
                   rf->msp, rf->psp);
  }
  mgos_cd_printf("Rebooting\n");
  mgos_dev_system_restart();

  (void) ef;
}

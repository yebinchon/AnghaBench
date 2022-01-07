
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct nand_chip {int chip_delay; int read_buf; int dev_ready; TYPE_1__ ecc; int cmd_ctrl; } ;


 int NAND_ECC_SOFT ;
 int PINMUX_BANK_MFA ;
 int PINMUX_STATIC_ADDR18 ;
 int PINMUX_STATIC_ADDR19 ;
 int PINMUX_STATIC_DATA0 ;
 int PINMUX_STATIC_DATA1 ;
 int PINMUX_STATIC_DATA2 ;
 int PINMUX_STATIC_DATA3 ;
 int PINMUX_STATIC_DATA4 ;
 int PINMUX_STATIC_DATA5 ;
 int PINMUX_STATIC_DATA6 ;
 int PINMUX_STATIC_DATA7 ;
 int PINMUX_STATIC_NCS ;
 int PINMUX_STATIC_NOE ;
 int PINMUX_STATIC_NWE ;
 int STATIC_BUS_WIDTH16 ;
 int STATIC_CTL_BANK0 ;
 int STATIC_READ_CYCLE_SHIFT ;
 int STATIC_TURN_AROUND_SHIFT ;
 int STATIC_WRITE_CYCLE_SHIFT ;
 int STATIC_WRITE_PULSE_SHIFT ;
 int SYS_CTRL_CLK_STATIC ;
 int SYS_CTRL_RST_STATIC ;
 int enable_clock (int ) ;
 int nand_dev_ready ;
 int nand_dev_reset (struct nand_chip*) ;
 int nand_hwcontrol ;
 int nand_read_buf ;
 int pinmux_set (int ,int,int ) ;
 int reset_block (int ,int) ;
 int writel (int,int ) ;

int board_nand_init(struct nand_chip *chip)
{

 reset_block(SYS_CTRL_RST_STATIC, 1);
 reset_block(SYS_CTRL_RST_STATIC, 0);


 enable_clock(SYS_CTRL_CLK_STATIC);



 pinmux_set(PINMUX_BANK_MFA, 12, PINMUX_STATIC_DATA0);
 pinmux_set(PINMUX_BANK_MFA, 13, PINMUX_STATIC_DATA1);
 pinmux_set(PINMUX_BANK_MFA, 14, PINMUX_STATIC_DATA2);
 pinmux_set(PINMUX_BANK_MFA, 15, PINMUX_STATIC_DATA3);
 pinmux_set(PINMUX_BANK_MFA, 16, PINMUX_STATIC_DATA4);
 pinmux_set(PINMUX_BANK_MFA, 17, PINMUX_STATIC_DATA5);
 pinmux_set(PINMUX_BANK_MFA, 18, PINMUX_STATIC_DATA6);
 pinmux_set(PINMUX_BANK_MFA, 19, PINMUX_STATIC_DATA7);

 pinmux_set(PINMUX_BANK_MFA, 20, PINMUX_STATIC_NWE);
 pinmux_set(PINMUX_BANK_MFA, 21, PINMUX_STATIC_NOE);
 pinmux_set(PINMUX_BANK_MFA, 22, PINMUX_STATIC_NCS);
 pinmux_set(PINMUX_BANK_MFA, 23, PINMUX_STATIC_ADDR18);
 pinmux_set(PINMUX_BANK_MFA, 24, PINMUX_STATIC_ADDR19);



 writel((0x3f << STATIC_READ_CYCLE_SHIFT)
   | (0x3f << STATIC_WRITE_CYCLE_SHIFT)
   | (0x1f << STATIC_WRITE_PULSE_SHIFT)
   | (0x03 << STATIC_TURN_AROUND_SHIFT) |
   STATIC_BUS_WIDTH16,
  STATIC_CTL_BANK0);

 chip->cmd_ctrl = nand_hwcontrol;
 chip->ecc.mode = NAND_ECC_SOFT;
 chip->chip_delay = 30;
 chip->dev_ready = nand_dev_ready;
 chip->read_buf = nand_read_buf;

 nand_dev_reset(chip);

 return 0;
}

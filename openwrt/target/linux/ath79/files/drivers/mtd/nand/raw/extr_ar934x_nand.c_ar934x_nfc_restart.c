
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar934x_nfc {int ctrl_reg; } ;


 int NAND_CMD_RESET ;
 int ar934x_nfc_hw_init (struct ar934x_nfc*) ;
 int ar934x_nfc_send_cmd (struct ar934x_nfc*,int ) ;

__attribute__((used)) static void ar934x_nfc_restart(struct ar934x_nfc *nfc)
{
 u32 ctrl_reg;

 ctrl_reg = nfc->ctrl_reg;
 ar934x_nfc_hw_init(nfc);
 nfc->ctrl_reg = ctrl_reg;

 ar934x_nfc_send_cmd(nfc, NAND_CMD_RESET);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ar934x_nfc {int buf; int ctrl_reg; } ;


 unsigned int AR934X_NFC_CMD_CMD0_M ;
 unsigned int AR934X_NFC_CMD_CMD0_S ;
 unsigned int AR934X_NFC_CMD_SEQ_1C1AXR ;
 int AR934X_NFC_ID_BUF_SIZE ;
 int ar934x_nfc_do_rw_command (struct ar934x_nfc*,int,int,int ,unsigned int,int ,int) ;
 int nfc_dbg (struct ar934x_nfc*,char*,unsigned int) ;
 int nfc_debug_data (char*,int ,int ) ;

__attribute__((used)) static int
ar934x_nfc_send_readid(struct ar934x_nfc *nfc, unsigned command)
{
 u32 cmd_reg;
 int err;

 nfc_dbg(nfc, "readid, cmd:%02x\n", command);

 cmd_reg = AR934X_NFC_CMD_SEQ_1C1AXR;
 cmd_reg |= (command & AR934X_NFC_CMD_CMD0_M) << AR934X_NFC_CMD_CMD0_S;

 err = ar934x_nfc_do_rw_command(nfc, -1, -1, AR934X_NFC_ID_BUF_SIZE,
           cmd_reg, nfc->ctrl_reg, 0);

 nfc_debug_data("[id] ", nfc->buf, AR934X_NFC_ID_BUF_SIZE);

 return err;
}

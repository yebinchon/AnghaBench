
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar934x_nfc {int dummy; } ;


 int AR934X_NFC_REG_CMD ;
 int ar934x_nfc_rr (struct ar934x_nfc*,int ) ;
 int ar934x_nfc_wr (struct ar934x_nfc*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static inline void ar934x_nfc_write_cmd_reg(struct ar934x_nfc *nfc, u32 cmd_reg)
{
 wmb();

 ar934x_nfc_wr(nfc, AR934X_NFC_REG_CMD, cmd_reg);

 ar934x_nfc_rr(nfc, AR934X_NFC_REG_CMD);
}

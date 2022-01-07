
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar934x_nfc {int dummy; } ;


 int AR934X_NFC_REG_STATUS ;
 int ar934x_nfc_rr (struct ar934x_nfc*,int ) ;

__attribute__((used)) static bool
__ar934x_nfc_dev_ready(struct ar934x_nfc *nfc)
{
 u32 status;

 status = ar934x_nfc_rr(nfc, AR934X_NFC_REG_STATUS);
 return (status & 0xff) == 0xff;
}

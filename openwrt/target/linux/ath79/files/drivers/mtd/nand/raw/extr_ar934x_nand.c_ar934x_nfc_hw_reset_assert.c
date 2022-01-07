
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar934x_nfc {int rst; } ;


 int reset_control_assert (int ) ;
 int udelay (int) ;

__attribute__((used)) static int ar934x_nfc_hw_reset_assert(struct ar934x_nfc *nfc) {
 reset_control_assert(nfc->rst);
 udelay(250);
}

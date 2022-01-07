
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HWREG (scalar_t__) ;
 int MAP_SHAMD5ResultRead (scalar_t__,int *) ;
 scalar_t__ SHAMD5_BASE ;
 int SHAMD5_INT_OUTPUT_READY ;
 scalar_t__ SHAMD5_O_IRQSTATUS ;

void CRYPTOHASH_SHAMD5Read (uint8_t *hash) {

    while((HWREG(SHAMD5_BASE + SHAMD5_O_IRQSTATUS) & SHAMD5_INT_OUTPUT_READY) == 0);

    MAP_SHAMD5ResultRead(SHAMD5_BASE, hash);
}

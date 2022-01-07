
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NBG460N_WAN_LED ;
 int ar71xx_setpin (int ,int) ;
 int ar71xx_setpindir (int ,int) ;
 int printf (char*) ;

int checkboard(void)
{

    ar71xx_setpindir(NBG460N_WAN_LED, 1);
    ar71xx_setpin(NBG460N_WAN_LED, 1);

    printf("U-boot on Zyxel NBG460N\n");
    return 0;
}

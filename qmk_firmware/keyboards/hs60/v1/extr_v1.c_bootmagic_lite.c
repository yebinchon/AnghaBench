
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBOUNCE ;
 int bootloader_jump () ;
 int eeconfig_disable () ;
 int matrix_get_row (int) ;
 int matrix_scan () ;
 int wait_ms (int ) ;

void bootmagic_lite(void)
{





 matrix_scan();
 wait_ms(DEBOUNCE);
 matrix_scan();






 if ( ( matrix_get_row(0) & (1<<0) ) &&
  ( matrix_get_row(4) & (1<<6) ) )
 {

  eeconfig_disable();


  bootloader_jump();
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOOTMAGIC_LITE_COLUMN ;
 int BOOTMAGIC_LITE_ROW ;
 int DEBOUNCE ;
 int DEBOUNCING_DELAY ;
 int bootloader_jump () ;
 int matrix_get_row (int ) ;
 int matrix_scan () ;
 int wait_ms (int) ;

void bootmagic_lite(void) {
    matrix_scan();





    wait_ms(30);

    matrix_scan();
    if (matrix_get_row(BOOTMAGIC_LITE_ROW) & (1 << BOOTMAGIC_LITE_COLUMN)) {
        bootloader_jump();
    }
}

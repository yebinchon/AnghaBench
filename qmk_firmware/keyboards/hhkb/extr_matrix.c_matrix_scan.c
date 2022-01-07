
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 scalar_t__ DEVICE_STATE_Suspended ;
 scalar_t__ DEVICE_STATE_Unattached ;
 int KEY_ENABLE () ;
 int KEY_POWER_OFF () ;
 int KEY_POWER_ON () ;
 scalar_t__ KEY_POWER_STATE () ;
 int KEY_PREV_OFF () ;
 int KEY_PREV_ON () ;
 int KEY_SELECT (size_t,size_t) ;
 scalar_t__ KEY_STATE () ;
 int KEY_UNABLE () ;
 size_t MATRIX_COLS ;
 scalar_t__ MATRIX_POWER_SAVE ;
 size_t MATRIX_ROWS ;
 int TIMER_DIFF_RAW (size_t,size_t) ;
 size_t TIMER_RAW ;
 int TIMER_RAW_FREQ ;
 scalar_t__ USB_DeviceState ;
 int _delay_us (int) ;
 int* matrix ;
 int matrix_last_modified ;
 int* matrix_prev ;
 int matrix_scan_quantum () ;
 int suspend_power_down () ;
 scalar_t__ timer_elapsed32 (int ) ;
 int timer_read32 () ;

uint8_t matrix_scan(void)
{
    uint8_t *tmp;

    tmp = matrix_prev;
    matrix_prev = matrix;
    matrix = tmp;


    if (!KEY_POWER_STATE()) KEY_POWER_ON();
    for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
        for (uint8_t col = 0; col < MATRIX_COLS; col++) {
            KEY_SELECT(row, col);
            _delay_us(5);


            if (matrix_prev[row] & (1<<col)) {
                KEY_PREV_ON();
            }
            _delay_us(10);




            uint8_t last = TIMER_RAW;

            KEY_ENABLE();
            _delay_us(5);

            if (KEY_STATE()) {
                matrix[row] &= ~(1<<col);
            } else {
                matrix[row] |= (1<<col);
            }




            if (TIMER_DIFF_RAW(TIMER_RAW, last) > 20/(1000000/TIMER_RAW_FREQ)) {
                matrix[row] = matrix_prev[row];
            }

            _delay_us(5);
            KEY_PREV_OFF();
            KEY_UNABLE();
            _delay_us(75);

        }
        if (matrix[row] ^ matrix_prev[row]) matrix_last_modified = timer_read32();
    }

    if (KEY_POWER_STATE() &&
            (USB_DeviceState == DEVICE_STATE_Suspended ||
             USB_DeviceState == DEVICE_STATE_Unattached ) &&
            timer_elapsed32(matrix_last_modified) > MATRIX_POWER_SAVE) {
        KEY_POWER_OFF();
        suspend_power_down();
    }

    matrix_scan_quantum();

    return 1;
}

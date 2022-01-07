
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {void* h; void* v; void* y; void* x; } ;
typedef TYPE_1__ report_mouse_t ;
typedef void* int8_t ;


 int LOWER_ROWMASK ;
 int MAIN_ROWMASK ;
 int MATRIX_ROWS ;
 int SERIAL_UART_DATA ;
 int SERIAL_UART_INIT () ;
 int SERIAL_UART_RXD_PRESENT ;
 int bitrev16 (int) ;
 int* matrix ;
 int matrix_scan_quantum () ;
 TYPE_1__ pointing_device_get_report () ;
 int pointing_device_set_report (TYPE_1__) ;
 int xprintf (char*) ;

uint8_t matrix_scan(void)
{
    SERIAL_UART_INIT();


    uint32_t timeout = 0;


    SERIAL_UART_DATA = 's';


    uint8_t uart_data[11] = {0};


    for (uint8_t i = 0; i < 11; i++) {



        while(!SERIAL_UART_RXD_PRESENT){
            timeout++;
            if (timeout > 10000){
  xprintf("\r\nTime out in keyboard.");
                break;
            }
        }
        uart_data[i] = SERIAL_UART_DATA;
    }



            uint8_t checksum = 0x00;
            for (uint8_t z=0; z<10; z++){
                checksum = checksum^uart_data[z];
            }
            checksum = checksum ^ (uart_data[10] & 0xF0);

            checksum = (checksum ^ ((checksum & 0xF0)>>4)) & 0x0F;

    if ((uart_data[10] & 0x0F) == checksum) {






  matrix[0] = (((uint16_t) uart_data[0] << 8) | ((uint16_t) uart_data[1])) & MAIN_ROWMASK;
  matrix[1] = ((uint16_t) uart_data[1] << 12) | ((uint16_t) uart_data[2] << 4);
  matrix[2] = (((uint16_t) uart_data[3] << 8) | ((uint16_t) uart_data[4])) & MAIN_ROWMASK;
  matrix[3] = (((uint16_t) uart_data[4] << 9) | ((uint16_t) uart_data[5] << 1)) & LOWER_ROWMASK;
  matrix[4] = (((uint16_t) uart_data[5] << 7) | ((uart_data[10] & 1<<7) ? 1:0) << 13 | ((uart_data[10] & 1<<6) ? 1:0) << 6) & LOWER_ROWMASK;

        for (uint8_t i = 0; i < MATRIX_ROWS; i++) {







   matrix[i] = bitrev16(matrix[i]);

        }




 report_mouse_t currentReport = {};





 currentReport = pointing_device_get_report();


 currentReport.x = (int8_t) uart_data[6];

 currentReport.y = (int8_t) uart_data[7];

 currentReport.v = (int8_t) uart_data[8];

 currentReport.h = (int8_t) uart_data[9];





 pointing_device_set_report(currentReport);
    } else {

    }


    matrix_scan_quantum();
    return 1;
}

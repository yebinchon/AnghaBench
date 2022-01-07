
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int MATRIX_ROWS ;
 int SERIAL_UART_DATA ;
 int SERIAL_UART_INIT () ;
 int SERIAL_UART_RXD_PRESENT ;
 int* matrix ;
 int matrix_scan_quantum () ;

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
                break;
            }
        }
        uart_data[i] = SERIAL_UART_DATA;
    }



    if (uart_data[10] == 0xE0)
    {

        for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
            matrix[i] = (uint16_t) uart_data[i*2] | (uint16_t) uart_data[i*2+1] << 7;
        }
    }


    matrix_scan_quantum();
    return 1;
}

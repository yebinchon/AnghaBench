
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int OverSampling; int HwFlowCtl; int Mode; int Parity; int StopBits; int WordLength; int BaudRate; } ;
struct TYPE_9__ {TYPE_1__ Init; } ;
struct TYPE_8__ {TYPE_3__ uart; } ;
typedef TYPE_2__ pyb_uart_obj_t ;
typedef TYPE_3__ UART_HandleTypeDef ;


 int UART_HWCONTROL_NONE ;
 int UART_MODE_TX_RX ;
 int UART_OVERSAMPLING_16 ;
 int UART_PARITY_NONE ;
 int UART_STOPBITS_1 ;
 int UART_WORDLENGTH_8B ;
 int memset (TYPE_3__*,int ,int) ;
 int uart_init2 (TYPE_2__*) ;

bool uart_init(pyb_uart_obj_t *uart_obj, uint32_t baudrate) {
    return uart_init2(uart_obj);
}

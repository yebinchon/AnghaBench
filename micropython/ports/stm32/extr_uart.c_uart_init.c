
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint ;
struct TYPE_23__ {int uart_id; int is_enabled; int attached_to_repl; int char_mask; int * mp_irq_obj; scalar_t__ mp_irq_trigger; int char_width; TYPE_3__* uartx; } ;
typedef TYPE_2__ pyb_uart_obj_t ;
typedef int pin_obj_t ;
typedef int huart ;
struct TYPE_24__ {int CR3; int CR2; int CR1; } ;
typedef TYPE_3__ USART_TypeDef ;
struct TYPE_22__ {int OverSampling; scalar_t__ HwFlowCtl; int Mode; scalar_t__ Parity; scalar_t__ StopBits; scalar_t__ WordLength; scalar_t__ BaudRate; } ;
struct TYPE_25__ {TYPE_1__ Init; TYPE_3__* Instance; } ;
typedef TYPE_4__ UART_HandleTypeDef ;
typedef int IRQn_Type ;


 int AF_FN_UART ;
 int CHAR_WIDTH_8BIT ;
 int CHAR_WIDTH_9BIT ;
 int HAL_NVIC_EnableIRQ (int ) ;
 int HAL_UART_Init (TYPE_4__*) ;
 int IRQ_PRI_UART ;
 int IRQn_NONNEG (int ) ;
 int * MICROPY_HW_UART10_RX ;
 int * MICROPY_HW_UART10_TX ;
 int * MICROPY_HW_UART1_RX ;
 int * MICROPY_HW_UART1_TX ;
 int * MICROPY_HW_UART2_CTS ;
 int * MICROPY_HW_UART2_RTS ;
 int * MICROPY_HW_UART2_RX ;
 int * MICROPY_HW_UART2_TX ;
 int * MICROPY_HW_UART3_CTS ;
 int * MICROPY_HW_UART3_RTS ;
 int * MICROPY_HW_UART3_RX ;
 int * MICROPY_HW_UART3_TX ;
 int * MICROPY_HW_UART4_CTS ;
 int * MICROPY_HW_UART4_RTS ;
 int * MICROPY_HW_UART4_RX ;
 int * MICROPY_HW_UART4_TX ;
 int * MICROPY_HW_UART5_RX ;
 int * MICROPY_HW_UART5_TX ;
 int * MICROPY_HW_UART6_CTS ;
 int * MICROPY_HW_UART6_RTS ;
 int * MICROPY_HW_UART6_RX ;
 int * MICROPY_HW_UART6_TX ;
 int * MICROPY_HW_UART7_RX ;
 int * MICROPY_HW_UART7_TX ;
 int * MICROPY_HW_UART8_RX ;
 int * MICROPY_HW_UART8_TX ;
 int * MICROPY_HW_UART9_RX ;
 int * MICROPY_HW_UART9_TX ;
 scalar_t__ MP_HAL_PIN_MODE_ALT ;
 scalar_t__ MP_HAL_PIN_PULL_UP ;
 int NVIC_SetPriority (int ,int ) ;
 TYPE_3__* UART10 ;
 int UART10_IRQn ;
 TYPE_3__* UART4 ;
 int UART4_IRQn ;
 TYPE_3__* UART5 ;
 int UART5_IRQn ;
 TYPE_3__* UART7 ;
 int UART7_IRQn ;
 TYPE_3__* UART8 ;
 int UART8_IRQn ;
 TYPE_3__* UART9 ;
 int UART9_IRQn ;
 scalar_t__ UART_HWCONTROL_CTS ;
 scalar_t__ UART_HWCONTROL_RTS ;
 int UART_MODE_TX_RX ;
 int UART_OVERSAMPLING_16 ;
 scalar_t__ UART_PARITY_NONE ;
 scalar_t__ UART_WORDLENGTH_9B ;
 TYPE_3__* USART1 ;
 int USART1_IRQn ;
 TYPE_3__* USART2 ;
 int USART2_IRQn ;
 TYPE_3__* USART3 ;
 int USART3_8_IRQn ;
 int USART3_IRQn ;
 TYPE_3__* USART4 ;
 TYPE_3__* USART5 ;
 TYPE_3__* USART6 ;
 int USART6_IRQn ;
 TYPE_3__* USART7 ;
 TYPE_3__* USART8 ;
 int USART_CR1_IE_ALL ;
 int USART_CR2_IE_ALL ;
 int USART_CR3_IE_ALL ;
 int __HAL_RCC_UART10_CLK_ENABLE () ;
 int __HAL_RCC_UART4_CLK_ENABLE () ;
 int __HAL_RCC_UART5_CLK_ENABLE () ;
 int __HAL_RCC_UART7_CLK_ENABLE () ;
 int __HAL_RCC_UART8_CLK_ENABLE () ;
 int __HAL_RCC_UART9_CLK_ENABLE () ;
 int __HAL_RCC_USART1_CLK_ENABLE () ;
 int __HAL_RCC_USART2_CLK_ENABLE () ;
 int __HAL_RCC_USART3_CLK_ENABLE () ;
 int __HAL_RCC_USART4_CLK_ENABLE () ;
 int __HAL_RCC_USART5_CLK_ENABLE () ;
 int __HAL_RCC_USART6_CLK_ENABLE () ;
 int __HAL_RCC_USART7_CLK_ENABLE () ;
 int __HAL_RCC_USART8_CLK_ENABLE () ;
 int memset (TYPE_4__*,int ,int) ;
 int mp_hal_pin_config_alt (int const*,scalar_t__,scalar_t__,int ,int) ;

bool uart_init(pyb_uart_obj_t *uart_obj,
    uint32_t baudrate, uint32_t bits, uint32_t parity, uint32_t stop, uint32_t flow) {
    USART_TypeDef *UARTx;
    IRQn_Type irqn;
    int uart_unit;

    const pin_obj_t *pins[4] = {0};

    switch (uart_obj->uart_id) {
        default:

            return 0;
    }

    uint32_t mode = MP_HAL_PIN_MODE_ALT;
    uint32_t pull = MP_HAL_PIN_PULL_UP;

    for (uint i = 0; i < 4; i++) {
        if (pins[i] != ((void*)0)) {
            bool ret = mp_hal_pin_config_alt(pins[i], mode, pull, AF_FN_UART, uart_unit);
            if (!ret) {
                return 0;
            }
        }
    }

    uart_obj->uartx = UARTx;


    UART_HandleTypeDef huart;
    memset(&huart, 0, sizeof(huart));
    huart.Instance = UARTx;
    huart.Init.BaudRate = baudrate;
    huart.Init.WordLength = bits;
    huart.Init.StopBits = stop;
    huart.Init.Parity = parity;
    huart.Init.Mode = UART_MODE_TX_RX;
    huart.Init.HwFlowCtl = flow;
    huart.Init.OverSampling = UART_OVERSAMPLING_16;
    HAL_UART_Init(&huart);


    uart_obj->uartx->CR1 &= ~USART_CR1_IE_ALL;
    uart_obj->uartx->CR2 &= ~USART_CR2_IE_ALL;
    uart_obj->uartx->CR3 &= ~USART_CR3_IE_ALL;
    NVIC_SetPriority(IRQn_NONNEG(irqn), IRQ_PRI_UART);
    HAL_NVIC_EnableIRQ(irqn);

    uart_obj->is_enabled = 1;
    uart_obj->attached_to_repl = 0;

    if (bits == UART_WORDLENGTH_9B && parity == UART_PARITY_NONE) {
        uart_obj->char_mask = 0x1ff;
        uart_obj->char_width = CHAR_WIDTH_9BIT;
    } else {
        if (bits == UART_WORDLENGTH_9B || parity == UART_PARITY_NONE) {
            uart_obj->char_mask = 0xff;
        } else {
            uart_obj->char_mask = 0x7f;
        }
        uart_obj->char_width = CHAR_WIDTH_8BIT;
    }

    uart_obj->mp_irq_trigger = 0;
    uart_obj->mp_irq_obj = ((void*)0);

    return 1;
}

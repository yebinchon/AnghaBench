
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;
typedef scalar_t__ _i16 ;


 int HAL_NVIC_INT_CTRL_REG ;
 int HAL_VECTACTIVE_MASK ;
 scalar_t__ IRQ_STATE_ENABLED ;
 scalar_t__ SL_EAGAIN ;
 scalar_t__ TELNET_TX_RETRIES_MAX ;
 int TELNET_WAIT_TIME_MS ;
 int mp_hal_delay_ms (int ) ;
 scalar_t__ query_irq () ;
 scalar_t__ sl_Send (int ,void const*,int ,int ) ;

__attribute__((used)) static bool telnet_send_with_retries (int16_t sd, const void *pBuf, int16_t len) {
    int32_t retries = 0;
    uint32_t delay = TELNET_WAIT_TIME_MS;

    if ((HAL_NVIC_INT_CTRL_REG & HAL_VECTACTIVE_MASK) == 0 && query_irq() == IRQ_STATE_ENABLED) {
        do {
            _i16 result = sl_Send(sd, pBuf, len, 0);
            if (result > 0) {
                return 1;
            }
            else if (SL_EAGAIN != result) {
                return 0;
            }

            mp_hal_delay_ms(delay++);
        } while (++retries <= TELNET_TX_RETRIES_MAX);
    }
    return 0;
}

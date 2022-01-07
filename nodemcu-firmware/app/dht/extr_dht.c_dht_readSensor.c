
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 int DHTLIB_ERROR_TIMEOUT ;
 int DHTLIB_OK ;
 scalar_t__ DHTLIB_TIMEOUT ;
 int DIRECT_MODE_INPUT (int) ;
 int DIRECT_MODE_OUTPUT (int) ;
 scalar_t__ DIRECT_READ (int) ;
 int DIRECT_WRITE_HIGH (int) ;
 int DIRECT_WRITE_LOW (int) ;
 scalar_t__ LOW ;
 int PLATFORM_GPIO_OUTPUT ;
 int PLATFORM_GPIO_PULLUP ;
 int* dht_bytes ;
 int ets_intr_lock () ;
 int ets_intr_unlock () ;
 int os_delay_us (int) ;
 int platform_gpio_mode (int,int ,int ) ;
 int system_get_time () ;

int dht_readSensor(uint8_t pin, uint8_t wakeupDelay)
{

    uint8_t mask = 128;
    uint8_t idx = 0;
    uint8_t i = 0;
    for (i = 0; i < 5; i++) dht_bytes[i] = 0;



    platform_gpio_mode(pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_PULLUP);
    DIRECT_MODE_OUTPUT(pin);

    DIRECT_WRITE_LOW(pin);

    for (i = 0; i < wakeupDelay; i++) os_delay_us(1000);

    ets_intr_lock();

    DIRECT_WRITE_HIGH(pin);
    os_delay_us(40);

    DIRECT_MODE_INPUT(pin);


    uint16_t loopCntLOW = DHTLIB_TIMEOUT;
    while (DIRECT_READ(pin) == LOW )
    {
        os_delay_us(1);
        if (--loopCntLOW == 0) return DHTLIB_ERROR_TIMEOUT;
    }

    uint16_t loopCntHIGH = DHTLIB_TIMEOUT;
    while (DIRECT_READ(pin) != LOW )
    {
        os_delay_us(1);
        if (--loopCntHIGH == 0) return DHTLIB_ERROR_TIMEOUT;
    }


    for (i = 40; i != 0; i--)
    {
        loopCntLOW = DHTLIB_TIMEOUT;
        while (DIRECT_READ(pin) == LOW )
        {
            os_delay_us(1);
            if (--loopCntLOW == 0) return DHTLIB_ERROR_TIMEOUT;
        }

        uint32_t t = system_get_time();

        loopCntHIGH = DHTLIB_TIMEOUT;
        while (DIRECT_READ(pin) != LOW )
        {
            os_delay_us(1);
            if (--loopCntHIGH == 0) return DHTLIB_ERROR_TIMEOUT;
        }

        if ((system_get_time() - t) > 40)
        {
            dht_bytes[idx] |= mask;
        }
        mask >>= 1;
        if (mask == 0)
        {
            mask = 128;
            idx++;
        }
    }

    ets_intr_unlock();

    DIRECT_MODE_OUTPUT(pin);

    DIRECT_WRITE_HIGH(pin);

    return DHTLIB_OK;
}

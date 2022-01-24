#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int DHTLIB_ERROR_TIMEOUT ; 
 int DHTLIB_OK ; 
 scalar_t__ DHTLIB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ LOW ; 
 int /*<<< orphan*/  PLATFORM_GPIO_OUTPUT ; 
 int /*<<< orphan*/  PLATFORM_GPIO_PULLUP ; 
 int* dht_bytes ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 

int FUNC10(uint8_t pin, uint8_t wakeupDelay)
{
    // INIT BUFFERVAR TO RECEIVE DATA
    uint8_t mask = 128;
    uint8_t idx = 0;
    uint8_t i = 0;

    // replace digitalRead() with Direct Port Reads.
    // reduces footprint ~100 bytes => portability issue?
    // direct port read is about 3x faster
    // uint8_t bit = digitalPinToBitMask(pin);
    // uint8_t port = digitalPinToPort(pin);
    // volatile uint8_t *PIR = portInputRegister(port);

    // EMPTY BUFFER
    for (i = 0; i < 5; i++) dht_bytes[i] = 0;

    // REQUEST SAMPLE
    // pinMode(pin, OUTPUT);
    FUNC8(pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_PULLUP);
    FUNC1(pin);
    // digitalWrite(pin, LOW); // T-be
    FUNC4(pin);
    // delay(wakeupDelay);
    for (i = 0; i < wakeupDelay; i++) FUNC7(1000);
    // Disable interrupts
    FUNC5();
    // digitalWrite(pin, HIGH);   // T-go
    FUNC3(pin);
    FUNC7(40);
    // pinMode(pin, INPUT);
    FUNC0(pin);

    // GET ACKNOWLEDGE or TIMEOUT
    uint16_t loopCntLOW = DHTLIB_TIMEOUT;
    while (FUNC2(pin) == LOW )  // T-rel
    {
        FUNC7(1);
        if (--loopCntLOW == 0) return DHTLIB_ERROR_TIMEOUT;
    }

    uint16_t loopCntHIGH = DHTLIB_TIMEOUT;
    while (FUNC2(pin) != LOW )  // T-reh
    {
        FUNC7(1);
        if (--loopCntHIGH == 0) return DHTLIB_ERROR_TIMEOUT;
    }

    // READ THE OUTPUT - 40 BITS => 5 BYTES
    for (i = 40; i != 0; i--)
    {
        loopCntLOW = DHTLIB_TIMEOUT;
        while (FUNC2(pin) == LOW )
        {
            FUNC7(1);
            if (--loopCntLOW == 0) return DHTLIB_ERROR_TIMEOUT;
        }

        uint32_t t = FUNC9();

        loopCntHIGH = DHTLIB_TIMEOUT;
        while (FUNC2(pin) != LOW )
        {
            FUNC7(1);
            if (--loopCntHIGH == 0) return DHTLIB_ERROR_TIMEOUT;
        }

        if ((FUNC9() - t) > 40)
        {
            dht_bytes[idx] |= mask;
        }
        mask >>= 1;
        if (mask == 0)   // next byte?
        {
            mask = 128;
            idx++;
        }
    }
    // Enable interrupts
    FUNC6();
    // pinMode(pin, OUTPUT);
    FUNC1(pin);
    // digitalWrite(pin, HIGH);
    FUNC3(pin);

    return DHTLIB_OK;
}
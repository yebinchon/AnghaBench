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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline uint16_t FUNC7(uint8_t device) {
    uint16_t data = 0;
    FUNC1();
    FUNC0();
    FUNC4(device | 0x0C);  // Addr:Keyboard(0010)/Mouse(0011), Cmd:Talk(11), Register0(00)
    FUNC2();              // Stopbit(0)
    if (!FUNC5(500)) {  // Service Request(310us Adjustable Keyboard): just ignored
        FUNC3();
        return -30;  // something wrong
    }
    if (!FUNC6(500)) {  // Tlt/Stop to Start(140-260us)
        FUNC3();
        return 0;  // No data to send
    }

    uint8_t n = 17;  // start bit + 16 data bits
    do {
        uint8_t lo = (uint8_t)FUNC5(130);
        if (!lo) goto error;

        uint8_t hi = (uint8_t)FUNC6(lo);
        if (!hi) goto error;

        hi = lo - hi;
        lo = 130 - lo;

        data <<= 1;
        if (lo < hi) {
            data |= 1;
        } else if (n == 17) {
            FUNC3();
            return -20;
        }
    } while (--n);

    // Stop bit can't be checked normally since it could have service request lenghtening
    // and its high state never goes low.
    if (!FUNC5(351) || FUNC6(91)) {
        FUNC3();
        return -21;
    }
    FUNC3();
    return data;

error:
    FUNC3();
    return -n;
}
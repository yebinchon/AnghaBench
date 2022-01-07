
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int attention () ;
 int cli () ;
 int place_bit0 () ;
 int sei () ;
 int send_byte (int) ;
 int wait_data_hi (int) ;
 scalar_t__ wait_data_lo (int) ;

__attribute__((used)) static inline uint16_t adb_host_dev_recv(uint8_t device) {
    uint16_t data = 0;
    cli();
    attention();
    send_byte(device | 0x0C);
    place_bit0();
    if (!wait_data_hi(500)) {
        sei();
        return -30;
    }
    if (!wait_data_lo(500)) {
        sei();
        return 0;
    }

    uint8_t n = 17;
    do {
        uint8_t lo = (uint8_t)wait_data_hi(130);
        if (!lo) goto error;

        uint8_t hi = (uint8_t)wait_data_lo(lo);
        if (!hi) goto error;

        hi = lo - hi;
        lo = 130 - lo;

        data <<= 1;
        if (lo < hi) {
            data |= 1;
        } else if (n == 17) {
            sei();
            return -20;
        }
    } while (--n);



    if (!wait_data_hi(351) || wait_data_lo(91)) {
        sei();
        return -21;
    }
    sei();
    return data;

error:
    sei();
    return -n;
}

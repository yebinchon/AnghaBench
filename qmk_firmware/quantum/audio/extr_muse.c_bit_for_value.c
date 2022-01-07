
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MUSE_B1 ;
 int muse_timer_1bit ;
 int muse_timer_2bit ;
 unsigned long muse_timer_31bit ;
 int muse_timer_4bit ;

bool bit_for_value(uint8_t value) {
    switch (value) {
        case 129:
            return 0;
        case 128:
            return 1;
        case 130:
            return muse_timer_1bit;
        case 136:
            return (muse_timer_4bit & 1);
        case 135:
            return (muse_timer_4bit & 2);
        case 133:
            return (muse_timer_4bit & 4);
        case 131:
            return (muse_timer_4bit & 8);
        case 134:
            return (muse_timer_2bit & 1);
        case 132:
            return (muse_timer_2bit & 2);
        default:
            return muse_timer_31bit & (1UL << (value - MUSE_B1));
    }
}

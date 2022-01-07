
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS_BREAK (int) ;
 int KEY (int) ;




 int M0110_CALC_OFFSET ;

 int M0110_KEYPAD_OFFSET ;

 int instant () ;
 int print (char*) ;
 int raw2scan (int) ;

uint8_t m0110_recv_key(void) {
    static uint8_t keybuf = 0x00;
    static uint8_t keybuf2 = 0x00;
    static uint8_t rawbuf = 0x00;
    uint8_t raw, raw2, raw3;

    if (keybuf) {
        raw = keybuf;
        keybuf = 0x00;
        return raw;
    }
    if (keybuf2) {
        raw = keybuf2;
        keybuf2 = 0x00;
        return raw;
    }

    if (rawbuf) {
        raw = rawbuf;
        rawbuf = 0x00;
    } else {
        raw = instant();
    }
    switch (KEY(raw)) {
        case 129:
            raw2 = instant();
            switch (KEY(raw2)) {
                case 130:
                case 133:
                case 132:
                case 131:
                    if (IS_BREAK(raw2)) {

                        keybuf = (raw2scan(raw2) | M0110_CALC_OFFSET);
                        return (raw2scan(raw2) | M0110_KEYPAD_OFFSET);
                    }
                    break;
            }

            return (raw2scan(raw2) | M0110_KEYPAD_OFFSET);
            break;
        case 128:
            raw2 = instant();
            switch (KEY(raw2)) {
                case 128:

                    rawbuf = raw2;
                    return raw2scan(raw);
                    break;
                case 129:

                    raw3 = instant();
                    switch (KEY(raw3)) {
                        case 130:
                        case 133:
                        case 132:
                        case 131:
                            if (IS_BREAK(raw)) {
                                if (IS_BREAK(raw3)) {

                                    print("(4)\n");
                                    keybuf2 = raw2scan(raw);
                                    keybuf = (raw2scan(raw3) | M0110_CALC_OFFSET);
                                    return (raw2scan(raw3) | M0110_KEYPAD_OFFSET);
                                } else {

                                    print("(3)\n");
                                    return (raw2scan(raw));
                                }
                            } else {
                                if (IS_BREAK(raw3)) {

                                    print("(2)\n");
                                    keybuf = (raw2scan(raw3) | M0110_CALC_OFFSET);
                                    return (raw2scan(raw3) | M0110_KEYPAD_OFFSET);
                                } else {

                                    print("(1)\n");
                                    return (raw2scan(raw3) | M0110_CALC_OFFSET);
                                }
                            }
                            break;
                        default:

                            keybuf = (raw2scan(raw3) | M0110_KEYPAD_OFFSET);
                            return raw2scan(raw);
                            break;
                    }
                    break;
                default:

                    keybuf = raw2scan(raw2);
                    return raw2scan(raw);
                    break;
            }
            break;
        default:

            return raw2scan(raw);
            break;
    }
}

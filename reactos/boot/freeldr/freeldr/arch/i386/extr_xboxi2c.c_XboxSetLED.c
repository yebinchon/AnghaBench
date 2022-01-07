
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PCSTR ;


 int I2cSetFrontpanelLed (int) ;
 int strlen (char*) ;

void
XboxSetLED(PCSTR pattern) {
    const char *x = pattern;
    int r, g;

    if(strlen(pattern) == 4) {
        r = g = 0;
        while (*x) {
            r *= 2;
            g *= 2;
            switch (*x) {
                case 'r':
                    r++;
                    break;
                case 'g':
                    g++;
                    break;
                case 'o':
                    r++;
                    g++;
                    break;
            }
            x++;
        }
        I2cSetFrontpanelLed(((r<<4) & 0xF0) + (g & 0xF));
    }
}

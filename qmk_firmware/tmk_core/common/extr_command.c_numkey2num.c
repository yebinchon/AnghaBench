
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
uint8_t numkey2num(uint8_t code) {
    switch (code) {
        case 136:
            return 1;
        case 135:
            return 2;
        case 134:
            return 3;
        case 133:
            return 4;
        case 132:
            return 5;
        case 131:
            return 6;
        case 130:
            return 7;
        case 129:
            return 8;
        case 128:
            return 9;
        case 137:
            return 0;
    }
    return 0;
}

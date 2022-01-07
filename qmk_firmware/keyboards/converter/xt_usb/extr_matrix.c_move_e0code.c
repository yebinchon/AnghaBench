
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t move_e0code(uint8_t code) {
    switch(code) {

        case 0x37: return 0x54;
        case 0x46: return 0x55;
        case 0x1C: return 0x6F;
        case 0x35: return 0x7F;




        case 0x5B: return 0x5A;
        case 0x5C: return 0x5B;
        case 0x5D: return 0x5C;
        case 0x5E: return 0x5D;
        case 0x5F: return 0x5E;
        case 0x63: return 0x5F;
        case 0x48: return 0x60;
        case 0x4B: return 0x61;
        case 0x50: return 0x62;
        case 0x4D: return 0x63;
        case 0x52: return 0x71;
        case 0x53: return 0x72;
        case 0x47: return 0x74;
        case 0x4F: return 0x75;
        case 0x49: return 0x77;
        case 0x51: return 0x78;
        case 0x1D: return 0x7A;
        case 0x38: return 0x7C;
    }
    return 0x00;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int midi_packet_length_t ;
 int ONE ;


 int THREE ;
 int TWO ;
 int UNDEFINED ;

midi_packet_length_t midi_packet_length(uint8_t status) {
    switch (status & 0xF0) {
        case 145:
        case 140:
        case 141:
        case 146:
        case 139:
            return THREE;
        case 138:
        case 144:
        case 135:
            return TWO;
        case 0xF0:
            switch (status) {
                case 143:
                case 131:
                case 134:
                case 142:
                case 133:
                case 147:
                case 137:
                case 130:
                    return ONE;
                case 136:
                    return THREE;
                case 132:
                case 135:
                    return TWO;
                case 128:
                case 129:
                default:
                    return UNDEFINED;
            }
        default:
            return UNDEFINED;
    }
}

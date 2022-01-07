
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
__attribute__((used)) static uint8_t key2asc(uint8_t key) {
    switch (key) {
        case 170:
            return 'a';
        case 169:
            return 'b';
        case 166:
            return 'c';
        case 164:
            return 'd';
        case 162:
            return 'e';
        case 158:
            return 'f';
        case 157:
            return 'g';
        case 155:
            return 'h';
        case 154:
            return 'i';
        case 153:
            return 'j';
        case 152:
            return 'k';
        case 151:
            return 'l';
        case 149:
            return 'm';
        case 147:
            return 'n';
        case 145:
            return 'o';
        case 144:
            return 'p';
        case 143:
            return 'q';
        case 141:
            return 'r';
        case 139:
            return 's';
        case 135:
            return 't';
        case 133:
            return 'u';
        case 132:
            return 'v';
        case 131:
            return 'w';
        case 130:
            return 'x';
        case 129:
            return 'y';
        case 128:
            return 'z';
        case 179:
            return '1';
        case 178:
            return '2';
        case 177:
            return '3';
        case 176:
            return '4';
        case 175:
            return '5';
        case 174:
            return '6';
        case 173:
            return '7';
        case 172:
            return '8';
        case 171:
            return '9';
        case 180:
            return '0';
        case 161:
            return '\n';
        case 159:
            return 0x1B;
        case 167:
            return '\b';
        case 134:
            return '\t';
        case 136:
            return ' ';
        case 148:
            return '-';
        case 160:
            return '=';
        case 150:
            return '[';
        case 140:
            return ']';
        case 168:
            return '\\';
        case 146:
            return '\\';
        case 138:
            return ';';
        case 142:
            return '\'';
        case 156:
            return '`';
        case 165:
            return ',';
        case 163:
            return '.';
        case 137:
            return '/';
        default:
            return 0x00;
    }
}

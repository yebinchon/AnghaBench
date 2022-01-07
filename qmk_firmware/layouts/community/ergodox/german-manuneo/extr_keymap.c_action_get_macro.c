
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int const* MACRO_NONE ;
 int unicode_action_function (int,int) ;
 int unicode_mode ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {
    if (!record->event.pressed) {
        return MACRO_NONE;
    }

    switch(id) {
        case 128:
            unicode_mode = (unicode_mode + 1) % 2;
            break;

case 178:
    unicode_action_function(0x03, 0xbf);
    break;
case 166:
    unicode_action_function(0x21, 0x90);
    break;
case 199:
    unicode_action_function(0x03, 0xa1);
    break;
case 153:
    unicode_action_function(0x20, 0x83);
    break;
case 136:
    unicode_action_function(0x21, 0x5b);
    break;
case 182:
    unicode_action_function(0x03, 0xbb);
    break;
case 131:
    unicode_action_function(0x21, 0x53);
    break;
case 169:
    unicode_action_function(0x03, 0xbe);
    break;
case 139:
    unicode_action_function(0x22, 0x04);
    break;
case 145:
    unicode_action_function(0x00, 0xb9);
    break;
case 191:
    unicode_action_function(0x03, 0xb2);
    break;
case 159:
    unicode_action_function(0x20, 0x85);
    break;
case 209:
    unicode_action_function(0x03, 0x99);
    break;
case 135:
    unicode_action_function(0x21, 0x55);
    break;
case 175:
    unicode_action_function(0x03, 0xc8);
    break;
case 157:
    unicode_action_function(0x20, 0x89);
    break;
case 148:
    unicode_action_function(0x20, 0x74);
    break;
case 161:
    unicode_action_function(0x21, 0x92);
    break;
case 143:
    unicode_action_function(0x20, 0x76);
    break;
case 220:
    unicode_action_function(0x21, 0x93);
    break;
case 176:
    unicode_action_function(0x03, 0xc0);
    break;
case 141:
    unicode_action_function(0x00, 0xb2);
    break;
case 204:
    unicode_action_function(0x03, 0xa9);
    break;
case 200:
    unicode_action_function(0x03, 0xa8);
    break;
case 158:
    unicode_action_function(0x20, 0x84);
    break;
case 205:
    unicode_action_function(0x03, 0x9d);
    break;
case 221:
    unicode_action_function(0x00, 0xf7);
    break;
case 173:
    unicode_action_function(0x03, 0xc3);
    break;
case 174:
    unicode_action_function(0x03, 0xc1);
    break;
case 132:
    unicode_action_function(0x21, 0x59);
    break;
case 185:
    unicode_action_function(0x03, 0xb3);
    break;
case 129:
    unicode_action_function(0x21, 0x54);
    break;
case 180:
    unicode_action_function(0x03, 0xbd);
    break;
case 168:
    unicode_action_function(0x03, 0xb6);
    break;
case 188:
    unicode_action_function(0x03, 0xb5);
    break;
case 183:
    unicode_action_function(0x03, 0xba);
    break;
case 144:
    unicode_action_function(0x20, 0x77);
    break;
case 201:
    unicode_action_function(0x03, 0xa0);
    break;
case 186:
    unicode_action_function(0x03, 0xc2);
    break;
case 194:
    unicode_action_function(0x03, 0x9e);
    break;
case 171:
    unicode_action_function(0x03, 0xb8);
    break;
case 187:
    unicode_action_function(0x03, 0xb7);
    break;
case 152:
    unicode_action_function(0x20, 0x82);
    break;
case 222:
    unicode_action_function(0x22, 0x43);
    break;
case 192:
    unicode_action_function(0x03, 0xb1);
    break;
case 202:
    unicode_action_function(0x03, 0xa6);
    break;
case 177:
    unicode_action_function(0x03, 0xc6);
    break;
case 167:
    unicode_action_function(0x22, 0x1e);
    break;
case 203:
    unicode_action_function(0x03, 0x9f);
    break;
case 219:
    unicode_action_function(0x22, 0x08);
    break;
case 165:
    unicode_action_function(0x00, 0xd7);
    break;
case 151:
    unicode_action_function(0x20, 0x80);
    break;
case 198:
    unicode_action_function(0x03, 0xa3);
    break;
case 179:
    unicode_action_function(0x03, 0xc9);
    break;
case 156:
    unicode_action_function(0x20, 0x81);
    break;
case 193:
    unicode_action_function(0x03, 0x96);
    break;
case 172:
    unicode_action_function(0x03, 0xc4);
    break;
case 149:
    unicode_action_function(0x20, 0x75);
    break;
case 138:
    unicode_action_function(0x22, 0x03);
    break;
case 162:
    unicode_action_function(0x00, 0xb1);
    break;
case 130:
    unicode_action_function(0x00, 0xbe);
    break;
case 142:
    unicode_action_function(0x00, 0xb3);
    break;
case 218:
    unicode_action_function(0x22, 0x05);
    break;
case 137:
    unicode_action_function(0x21, 0x91);
    break;
case 146:
    unicode_action_function(0x20, 0x79);
    break;
case 189:
    unicode_action_function(0x03, 0xb4);
    break;
case 181:
    unicode_action_function(0x03, 0xbc);
    break;
case 208:
    unicode_action_function(0x03, 0x9a);
    break;
case 160:
    unicode_action_function(0x20, 0x88);
    break;
case 216:
    unicode_action_function(0x03, 0x91);
    break;
case 155:
    unicode_action_function(0x20, 0x87);
    break;
case 215:
    unicode_action_function(0x03, 0x92);
    break;
case 211:
    unicode_action_function(0x03, 0x97);
    break;
case 150:
    unicode_action_function(0x20, 0x78);
    break;
case 140:
    unicode_action_function(0x20, 0x70);
    break;
case 164:
    unicode_action_function(0x22, 0x09);
    break;
case 170:
    unicode_action_function(0x03, 0xc5);
    break;
case 163:
    unicode_action_function(0x22, 0x60);
    break;
case 214:
    unicode_action_function(0x03, 0xa7);
    break;
case 217:
    unicode_action_function(0x22, 0x00);
    break;
case 197:
    unicode_action_function(0x03, 0xa4);
    break;
case 133:
    unicode_action_function(0x00, 0xbc);
    break;
case 190:
    unicode_action_function(0x03, 0xc7);
    break;
case 196:
    unicode_action_function(0x03, 0x98);
    break;
case 184:
    unicode_action_function(0x03, 0xb9);
    break;
case 207:
    unicode_action_function(0x03, 0x9b);
    break;
case 147:
    unicode_action_function(0x20, 0x7f);
    break;
case 195:
    unicode_action_function(0x03, 0xa5);
    break;
case 206:
    unicode_action_function(0x03, 0x9c);
    break;
case 212:
    unicode_action_function(0x03, 0x95);
    break;
case 210:
    unicode_action_function(0x03, 0x93);
    break;
case 154:
    unicode_action_function(0x20, 0x86);
    break;
case 213:
    unicode_action_function(0x03, 0x94);
    break;
case 134:
    unicode_action_function(0x00, 0xbd);
    break;
        default:
            break;
    }
    return MACRO_NONE;
}

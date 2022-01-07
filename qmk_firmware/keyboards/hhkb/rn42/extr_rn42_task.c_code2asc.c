
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int KC_LSHIFT ;
 int KC_RSHIFT ;
 int MOD_BIT (int ) ;
 int get_mods () ;

__attribute__((used)) static uint8_t code2asc(uint8_t code)
{
    bool shifted = (get_mods() & (MOD_BIT(KC_LSHIFT)|MOD_BIT(KC_RSHIFT))) ? 1 : 0;
    switch (code) {
        case 171: return (shifted ? 'A' : 'a');
        case 170: return (shifted ? 'B' : 'b');
        case 167: return (shifted ? 'C' : 'c');
        case 165: return (shifted ? 'D' : 'd');
        case 162: return (shifted ? 'E' : 'e');
        case 158: return (shifted ? 'F' : 'f');
        case 157: return (shifted ? 'G' : 'g');
        case 155: return (shifted ? 'H' : 'h');
        case 154: return (shifted ? 'I' : 'i');
        case 153: return (shifted ? 'J' : 'j');
        case 152: return (shifted ? 'K' : 'k');
        case 151: return (shifted ? 'L' : 'l');
        case 149: return (shifted ? 'M' : 'm');
        case 147: return (shifted ? 'N' : 'n');
        case 145: return (shifted ? 'O' : 'o');
        case 144: return (shifted ? 'P' : 'p');
        case 143: return (shifted ? 'Q' : 'q');
        case 141: return (shifted ? 'R' : 'r');
        case 139: return (shifted ? 'S' : 's');
        case 135: return (shifted ? 'T' : 't');
        case 133: return (shifted ? 'U' : 'u');
        case 132: return (shifted ? 'V' : 'v');
        case 131: return (shifted ? 'W' : 'w');
        case 130: return (shifted ? 'X' : 'x');
        case 129: return (shifted ? 'Y' : 'y');
        case 128: return (shifted ? 'Z' : 'z');
        case 180: return (shifted ? '!' : '1');
        case 179: return (shifted ? '@' : '2');
        case 178: return (shifted ? '#' : '3');
        case 177: return (shifted ? '$' : '4');
        case 176: return (shifted ? '%' : '5');
        case 175: return (shifted ? '^' : '6');
        case 174: return (shifted ? '&' : '7');
        case 173: return (shifted ? '*' : '8');
        case 172: return (shifted ? '(' : '9');
        case 181: return (shifted ? ')' : '0');
        case 161: return '\n';
        case 159: return 0x1B;
        case 168: return '\b';
        case 134: return '\t';
        case 136: return ' ';
        case 148: return (shifted ? '_' : '-');
        case 160: return (shifted ? '+' : '=');
        case 150: return (shifted ? '{' : '[');
        case 140: return (shifted ? '}' : ']');
        case 169: return (shifted ? '|' : '\\');
        case 146: return (shifted ? '|' : '\\');
        case 138: return (shifted ? ':' : ';');
        case 142: return (shifted ? '"' : '\'');
        case 156: return (shifted ? '~' : '`');
        case 166: return (shifted ? '<' : ',');
        case 163: return (shifted ? '>' : '.');
        case 137: return (shifted ? '?' : '/');
        case 164: return '\0';
        default: return ' ';
    }
}

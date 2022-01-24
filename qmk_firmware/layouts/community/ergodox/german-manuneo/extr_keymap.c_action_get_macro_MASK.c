#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  const* MACRO_NONE ; 
#define  UC_ASYMPTOTICALLY_EQUAL_TO 222 
#define  UC_DIVISION_SIGN 221 
#define  UC_DOWNWARDS_ARROW 220 
#define  UC_ELEMENT_OF 219 
#define  UC_EMPTY_SET 218 
#define  UC_FOR_ALL 217 
#define  UC_GREEK_CAPITAL_LETTER_ALPHA 216 
#define  UC_GREEK_CAPITAL_LETTER_BETA 215 
#define  UC_GREEK_CAPITAL_LETTER_CHI 214 
#define  UC_GREEK_CAPITAL_LETTER_DELTA 213 
#define  UC_GREEK_CAPITAL_LETTER_EPSILON 212 
#define  UC_GREEK_CAPITAL_LETTER_ETA 211 
#define  UC_GREEK_CAPITAL_LETTER_GAMMA 210 
#define  UC_GREEK_CAPITAL_LETTER_IOTA 209 
#define  UC_GREEK_CAPITAL_LETTER_KAPPA 208 
#define  UC_GREEK_CAPITAL_LETTER_LAMDA 207 
#define  UC_GREEK_CAPITAL_LETTER_MU 206 
#define  UC_GREEK_CAPITAL_LETTER_NU 205 
#define  UC_GREEK_CAPITAL_LETTER_OMEGA 204 
#define  UC_GREEK_CAPITAL_LETTER_OMICRON 203 
#define  UC_GREEK_CAPITAL_LETTER_PHI 202 
#define  UC_GREEK_CAPITAL_LETTER_PI 201 
#define  UC_GREEK_CAPITAL_LETTER_PSI 200 
#define  UC_GREEK_CAPITAL_LETTER_RHO 199 
#define  UC_GREEK_CAPITAL_LETTER_SIGMA 198 
#define  UC_GREEK_CAPITAL_LETTER_TAU 197 
#define  UC_GREEK_CAPITAL_LETTER_THETA 196 
#define  UC_GREEK_CAPITAL_LETTER_UPSILON 195 
#define  UC_GREEK_CAPITAL_LETTER_XI 194 
#define  UC_GREEK_CAPITAL_LETTER_ZETA 193 
#define  UC_GREEK_SMALL_LETTER_ALPHA 192 
#define  UC_GREEK_SMALL_LETTER_BETA 191 
#define  UC_GREEK_SMALL_LETTER_CHI 190 
#define  UC_GREEK_SMALL_LETTER_DELTA 189 
#define  UC_GREEK_SMALL_LETTER_EPSILON 188 
#define  UC_GREEK_SMALL_LETTER_ETA 187 
#define  UC_GREEK_SMALL_LETTER_FINAL_SIGMA 186 
#define  UC_GREEK_SMALL_LETTER_GAMMA 185 
#define  UC_GREEK_SMALL_LETTER_IOTA 184 
#define  UC_GREEK_SMALL_LETTER_KAPPA 183 
#define  UC_GREEK_SMALL_LETTER_LAMDA 182 
#define  UC_GREEK_SMALL_LETTER_MU 181 
#define  UC_GREEK_SMALL_LETTER_NU 180 
#define  UC_GREEK_SMALL_LETTER_OMEGA 179 
#define  UC_GREEK_SMALL_LETTER_OMICRON 178 
#define  UC_GREEK_SMALL_LETTER_PHI 177 
#define  UC_GREEK_SMALL_LETTER_PI 176 
#define  UC_GREEK_SMALL_LETTER_PSI 175 
#define  UC_GREEK_SMALL_LETTER_RHO 174 
#define  UC_GREEK_SMALL_LETTER_SIGMA 173 
#define  UC_GREEK_SMALL_LETTER_TAU 172 
#define  UC_GREEK_SMALL_LETTER_THETA 171 
#define  UC_GREEK_SMALL_LETTER_UPSILON 170 
#define  UC_GREEK_SMALL_LETTER_XI 169 
#define  UC_GREEK_SMALL_LETTER_ZETA 168 
#define  UC_INFINITY 167 
#define  UC_LEFTWARDS_ARROW 166 
#define  UC_MULTIPLICATION_SIGN 165 
#define  UC_NOT_AN_ELEMENT_OF 164 
#define  UC_NOT_EQUAL_TO 163 
#define  UC_PLUS_MINUS_SIGN 162 
#define  UC_RIGHTWARDS_ARROW 161 
#define  UC_SUBSCRIPT_EIGHT 160 
#define  UC_SUBSCRIPT_FIVE 159 
#define  UC_SUBSCRIPT_FOUR 158 
#define  UC_SUBSCRIPT_NINE 157 
#define  UC_SUBSCRIPT_ONE 156 
#define  UC_SUBSCRIPT_SEVEN 155 
#define  UC_SUBSCRIPT_SIX 154 
#define  UC_SUBSCRIPT_THREE 153 
#define  UC_SUBSCRIPT_TWO 152 
#define  UC_SUBSCRIPT_ZERO 151 
#define  UC_SUPERSCRIPT_EIGHT 150 
#define  UC_SUPERSCRIPT_FIVE 149 
#define  UC_SUPERSCRIPT_FOUR 148 
#define  UC_SUPERSCRIPT_LATIN_SMALL_LETTER_N 147 
#define  UC_SUPERSCRIPT_NINE 146 
#define  UC_SUPERSCRIPT_ONE 145 
#define  UC_SUPERSCRIPT_SEVEN 144 
#define  UC_SUPERSCRIPT_SIX 143 
#define  UC_SUPERSCRIPT_THREE 142 
#define  UC_SUPERSCRIPT_TWO 141 
#define  UC_SUPERSCRIPT_ZERO 140 
#define  UC_THERE_DOES_NOT_EXIST 139 
#define  UC_THERE_EXISTS 138 
#define  UC_UPWARDS_ARROW 137 
#define  UC_VULGAR_FRACTION_ONE_EIGHTH 136 
#define  UC_VULGAR_FRACTION_ONE_FIFTH 135 
#define  UC_VULGAR_FRACTION_ONE_HALF 134 
#define  UC_VULGAR_FRACTION_ONE_QUARTER 133 
#define  UC_VULGAR_FRACTION_ONE_SIXTH 132 
#define  UC_VULGAR_FRACTION_ONE_THIRD 131 
#define  UC_VULGAR_FRACTION_THREE_QUARTERS 130 
#define  UC_VULGAR_FRACTION_TWO_THIRDS 129 
#define  UM 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int unicode_mode ; 

const macro_t *FUNC1(keyrecord_t *record, uint8_t id, uint8_t opt) {
    if (!record->event.pressed) {
        return MACRO_NONE;
    }
    // MACRODOWN only works in this function
    switch(id) {
        case UM:
            unicode_mode = (unicode_mode + 1) % 2;
            break;

case UC_GREEK_SMALL_LETTER_OMICRON:
    FUNC0(0x03, 0xbf);
    break;
case UC_LEFTWARDS_ARROW:
    FUNC0(0x21, 0x90);
    break;
case UC_GREEK_CAPITAL_LETTER_RHO:
    FUNC0(0x03, 0xa1);
    break;
case UC_SUBSCRIPT_THREE:
    FUNC0(0x20, 0x83);
    break;
case UC_VULGAR_FRACTION_ONE_EIGHTH:
    FUNC0(0x21, 0x5b);
    break;
case UC_GREEK_SMALL_LETTER_LAMDA:
    FUNC0(0x03, 0xbb);
    break;
case UC_VULGAR_FRACTION_ONE_THIRD:
    FUNC0(0x21, 0x53);
    break;
case UC_GREEK_SMALL_LETTER_XI:
    FUNC0(0x03, 0xbe);
    break;
case UC_THERE_DOES_NOT_EXIST:
    FUNC0(0x22, 0x04);
    break;
case UC_SUPERSCRIPT_ONE:
    FUNC0(0x00, 0xb9);
    break;
case UC_GREEK_SMALL_LETTER_BETA:
    FUNC0(0x03, 0xb2);
    break;
case UC_SUBSCRIPT_FIVE:
    FUNC0(0x20, 0x85);
    break;
case UC_GREEK_CAPITAL_LETTER_IOTA:
    FUNC0(0x03, 0x99);
    break;
case UC_VULGAR_FRACTION_ONE_FIFTH:
    FUNC0(0x21, 0x55);
    break;
case UC_GREEK_SMALL_LETTER_PSI:
    FUNC0(0x03, 0xc8);
    break;
case UC_SUBSCRIPT_NINE:
    FUNC0(0x20, 0x89);
    break;
case UC_SUPERSCRIPT_FOUR:
    FUNC0(0x20, 0x74);
    break;
case UC_RIGHTWARDS_ARROW:
    FUNC0(0x21, 0x92);
    break;
case UC_SUPERSCRIPT_SIX:
    FUNC0(0x20, 0x76);
    break;
case UC_DOWNWARDS_ARROW:
    FUNC0(0x21, 0x93);
    break;
case UC_GREEK_SMALL_LETTER_PI:
    FUNC0(0x03, 0xc0);
    break;
case UC_SUPERSCRIPT_TWO:
    FUNC0(0x00, 0xb2);
    break;
case UC_GREEK_CAPITAL_LETTER_OMEGA:
    FUNC0(0x03, 0xa9);
    break;
case UC_GREEK_CAPITAL_LETTER_PSI:
    FUNC0(0x03, 0xa8);
    break;
case UC_SUBSCRIPT_FOUR:
    FUNC0(0x20, 0x84);
    break;
case UC_GREEK_CAPITAL_LETTER_NU:
    FUNC0(0x03, 0x9d);
    break;
case UC_DIVISION_SIGN:
    FUNC0(0x00, 0xf7);
    break;
case UC_GREEK_SMALL_LETTER_SIGMA:
    FUNC0(0x03, 0xc3);
    break;
case UC_GREEK_SMALL_LETTER_RHO:
    FUNC0(0x03, 0xc1);
    break;
case UC_VULGAR_FRACTION_ONE_SIXTH:
    FUNC0(0x21, 0x59);
    break;
case UC_GREEK_SMALL_LETTER_GAMMA:
    FUNC0(0x03, 0xb3);
    break;
case UC_VULGAR_FRACTION_TWO_THIRDS:
    FUNC0(0x21, 0x54);
    break;
case UC_GREEK_SMALL_LETTER_NU:
    FUNC0(0x03, 0xbd);
    break;
case UC_GREEK_SMALL_LETTER_ZETA:
    FUNC0(0x03, 0xb6);
    break;
case UC_GREEK_SMALL_LETTER_EPSILON:
    FUNC0(0x03, 0xb5);
    break;
case UC_GREEK_SMALL_LETTER_KAPPA:
    FUNC0(0x03, 0xba);
    break;
case UC_SUPERSCRIPT_SEVEN:
    FUNC0(0x20, 0x77);
    break;
case UC_GREEK_CAPITAL_LETTER_PI:
    FUNC0(0x03, 0xa0);
    break;
case UC_GREEK_SMALL_LETTER_FINAL_SIGMA:
    FUNC0(0x03, 0xc2);
    break;
case UC_GREEK_CAPITAL_LETTER_XI:
    FUNC0(0x03, 0x9e);
    break;
case UC_GREEK_SMALL_LETTER_THETA:
    FUNC0(0x03, 0xb8);
    break;
case UC_GREEK_SMALL_LETTER_ETA:
    FUNC0(0x03, 0xb7);
    break;
case UC_SUBSCRIPT_TWO:
    FUNC0(0x20, 0x82);
    break;
case UC_ASYMPTOTICALLY_EQUAL_TO:
    FUNC0(0x22, 0x43);
    break;
case UC_GREEK_SMALL_LETTER_ALPHA:
    FUNC0(0x03, 0xb1);
    break;
case UC_GREEK_CAPITAL_LETTER_PHI:
    FUNC0(0x03, 0xa6);
    break;
case UC_GREEK_SMALL_LETTER_PHI:
    FUNC0(0x03, 0xc6);
    break;
case UC_INFINITY:
    FUNC0(0x22, 0x1e);
    break;
case UC_GREEK_CAPITAL_LETTER_OMICRON:
    FUNC0(0x03, 0x9f);
    break;
case UC_ELEMENT_OF:
    FUNC0(0x22, 0x08);
    break;
case UC_MULTIPLICATION_SIGN:
    FUNC0(0x00, 0xd7);
    break;
case UC_SUBSCRIPT_ZERO:
    FUNC0(0x20, 0x80);
    break;
case UC_GREEK_CAPITAL_LETTER_SIGMA:
    FUNC0(0x03, 0xa3);
    break;
case UC_GREEK_SMALL_LETTER_OMEGA:
    FUNC0(0x03, 0xc9);
    break;
case UC_SUBSCRIPT_ONE:
    FUNC0(0x20, 0x81);
    break;
case UC_GREEK_CAPITAL_LETTER_ZETA:
    FUNC0(0x03, 0x96);
    break;
case UC_GREEK_SMALL_LETTER_TAU:
    FUNC0(0x03, 0xc4);
    break;
case UC_SUPERSCRIPT_FIVE:
    FUNC0(0x20, 0x75);
    break;
case UC_THERE_EXISTS:
    FUNC0(0x22, 0x03);
    break;
case UC_PLUS_MINUS_SIGN:
    FUNC0(0x00, 0xb1);
    break;
case UC_VULGAR_FRACTION_THREE_QUARTERS:
    FUNC0(0x00, 0xbe);
    break;
case UC_SUPERSCRIPT_THREE:
    FUNC0(0x00, 0xb3);
    break;
case UC_EMPTY_SET:
    FUNC0(0x22, 0x05);
    break;
case UC_UPWARDS_ARROW:
    FUNC0(0x21, 0x91);
    break;
case UC_SUPERSCRIPT_NINE:
    FUNC0(0x20, 0x79);
    break;
case UC_GREEK_SMALL_LETTER_DELTA:
    FUNC0(0x03, 0xb4);
    break;
case UC_GREEK_SMALL_LETTER_MU:
    FUNC0(0x03, 0xbc);
    break;
case UC_GREEK_CAPITAL_LETTER_KAPPA:
    FUNC0(0x03, 0x9a);
    break;
case UC_SUBSCRIPT_EIGHT:
    FUNC0(0x20, 0x88);
    break;
case UC_GREEK_CAPITAL_LETTER_ALPHA:
    FUNC0(0x03, 0x91);
    break;
case UC_SUBSCRIPT_SEVEN:
    FUNC0(0x20, 0x87);
    break;
case UC_GREEK_CAPITAL_LETTER_BETA:
    FUNC0(0x03, 0x92);
    break;
case UC_GREEK_CAPITAL_LETTER_ETA:
    FUNC0(0x03, 0x97);
    break;
case UC_SUPERSCRIPT_EIGHT:
    FUNC0(0x20, 0x78);
    break;
case UC_SUPERSCRIPT_ZERO:
    FUNC0(0x20, 0x70);
    break;
case UC_NOT_AN_ELEMENT_OF:
    FUNC0(0x22, 0x09);
    break;
case UC_GREEK_SMALL_LETTER_UPSILON:
    FUNC0(0x03, 0xc5);
    break;
case UC_NOT_EQUAL_TO:
    FUNC0(0x22, 0x60);
    break;
case UC_GREEK_CAPITAL_LETTER_CHI:
    FUNC0(0x03, 0xa7);
    break;
case UC_FOR_ALL:
    FUNC0(0x22, 0x00);
    break;
case UC_GREEK_CAPITAL_LETTER_TAU:
    FUNC0(0x03, 0xa4);
    break;
case UC_VULGAR_FRACTION_ONE_QUARTER:
    FUNC0(0x00, 0xbc);
    break;
case UC_GREEK_SMALL_LETTER_CHI:
    FUNC0(0x03, 0xc7);
    break;
case UC_GREEK_CAPITAL_LETTER_THETA:
    FUNC0(0x03, 0x98);
    break;
case UC_GREEK_SMALL_LETTER_IOTA:
    FUNC0(0x03, 0xb9);
    break;
case UC_GREEK_CAPITAL_LETTER_LAMDA:
    FUNC0(0x03, 0x9b);
    break;
case UC_SUPERSCRIPT_LATIN_SMALL_LETTER_N:
    FUNC0(0x20, 0x7f);
    break;
case UC_GREEK_CAPITAL_LETTER_UPSILON:
    FUNC0(0x03, 0xa5);
    break;
case UC_GREEK_CAPITAL_LETTER_MU:
    FUNC0(0x03, 0x9c);
    break;
case UC_GREEK_CAPITAL_LETTER_EPSILON:
    FUNC0(0x03, 0x95);
    break;
case UC_GREEK_CAPITAL_LETTER_GAMMA:
    FUNC0(0x03, 0x93);
    break;
case UC_SUBSCRIPT_SIX:
    FUNC0(0x20, 0x86);
    break;
case UC_GREEK_CAPITAL_LETTER_DELTA:
    FUNC0(0x03, 0x94);
    break;
case UC_VULGAR_FRACTION_ONE_HALF:
    FUNC0(0x00, 0xbd);
    break;
        default:
            break;
    }
    return MACRO_NONE;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_LCMD ; 
 int /*<<< orphan*/  KC_LCTL ; 
#define  ampr 148 
#define  astr 147 
#define  at 146 
#define  bsls 145 
#define  circ 144 
#define  cmd 143 
 int cmd_keys_down ; 
#define  dlr 142 
#define  eql 141 
#define  exlm 140 
#define  grv 139 
#define  hash 138 
#define  lbrc 137 
#define  lcbr 136 
#define  lprn 135 
#define  perc 134 
#define  pipe 133 
#define  plus 132 
#define  rbrc 131 
#define  rcbr 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  rprn 129 
 int FUNC1 (TYPE_2__*,char*) ; 
#define  tild 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        // Override the defualt auto shifted symbols to use SEND_STRING See
        // https://github.com/qmk/qmk_firmware/issues/4072
        case ampr:
            return FUNC1(record, "&");
        case astr:
            return FUNC1(record, "*");
        case at:
            return FUNC1(record, "@");
        case bsls:
            return FUNC1(record, "\\");
        case circ:
            return FUNC1(record, "^");
        case dlr:
            return FUNC1(record, "$");
        case eql:
            return FUNC1(record, "=");
        case exlm:
            return FUNC1(record, "!");
        case grv:
            return FUNC1(record, "`");
        case hash:
            return FUNC1(record, "#");
        case lbrc:
            return FUNC1(record, "[");
        case lcbr:
            return FUNC1(record, "{");
        case lprn:
            return FUNC1(record, "(");
        case perc:
            return FUNC1(record, "%");
        case pipe:
            return FUNC1(record, "|");
        case plus:
            return FUNC1(record, "+");
        case rbrc:
            return FUNC1(record, "]");
        case rcbr:
            return FUNC1(record, "}");
        case rprn:
            return FUNC1(record, ")");
        case tild:
            return FUNC1(record, "~");

        // cmd + cmd -> cmd + ctl
        case cmd:
            if (record->event.pressed) {
                if (cmd_keys_down == 0) {
                    FUNC0(KC_LCMD);
                } else {
                    FUNC0(KC_LCTL);
                }
                cmd_keys_down++;
            } else {
                if (cmd_keys_down == 1) {
                    FUNC2(KC_LCMD);
                } else {
                    FUNC2(KC_LCTL);
                }
                cmd_keys_down--;
            }
            return true;
    }
    return true;
}
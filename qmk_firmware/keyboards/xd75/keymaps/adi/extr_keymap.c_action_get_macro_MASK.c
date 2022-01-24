#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_6__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_2__ event; } ;
typedef  TYPE_1__ keyrecord_t ;
typedef  TYPE_2__ keyevent_t ;
struct TYPE_7__ {int swap_lalt_lgui; int swap_ralt_rgui; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  END ; 
 int ENT ; 
 int EQL ; 
 int /*<<< orphan*/  LALT ; 
 int LBRC ; 
 int /*<<< orphan*/  LCTRL ; 
 int LEFT ; 
 int /*<<< orphan*/  LGUI ; 
 int /*<<< orphan*/  LSFT ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int MINS ; 
#define  M_BACK 137 
#define  M_ENTR 136 
#define  M_FWRD 135 
#define  M_NSPC 134 
#define  M_NTAB 133 
#define  M_PSPC 132 
#define  M_PTAB 131 
#define  M_SCRN 130 
#define  M_ZOIN 129 
#define  M_ZOUT 128 
 int PSCR ; 
 int RBRC ; 
 int RIGHT ; 
 int /*<<< orphan*/  RSFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int TAB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__ keymap_config ; 

const macro_t *FUNC6(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  // MACRODOWN only works in this function
  keyevent_t event = record->event;

  if (!FUNC5()) {
    FUNC4();
  }
  bool use_cmd = true;    // Use, for example, Cmd-Tab, Cmd-C, Cmd-V, etc.
  // Compare to MAGIC_SWAP_ALT_GUI and MAGIC_UNSWAP_ALT_GUI configs, set in:
  // quantum/quantum.c
  if(keymap_config.swap_lalt_lgui == 1 && keymap_config.swap_ralt_rgui == 1) {
    use_cmd = false;      // ... or, Alt-Tab, Ctrl-C, Ctrl-V, etc.
  }
    switch(id) {
      case M_BACK:
          /* Command + [ or previous page */
          if (use_cmd) {
              return (event.pressed ? FUNC1( FUNC0(LGUI), FUNC2(LBRC), FUNC3(LGUI), END ) : FUNC1(END));
          } else {
              return (event.pressed ? FUNC1( FUNC0(LALT), FUNC2(LEFT), FUNC3(LALT), END ) : FUNC1(END));
          }
      case M_FWRD:
          /* Command + ] or next page */
          if (use_cmd) {
              return (event.pressed ? FUNC1( FUNC0(LGUI), FUNC2(RBRC), FUNC3(LGUI), END ) : FUNC1(END));
          } else {
              return (event.pressed ? FUNC1( FUNC0(LALT), FUNC2(RIGHT), FUNC3(LALT), END ) : FUNC1(END));
          }
      case M_PTAB:
          /* Command + { or prev tab. */
          if (use_cmd) {
              return (event.pressed ? FUNC1( FUNC0(LGUI), FUNC0(RSFT), FUNC2(LBRC), FUNC3(RSFT), FUNC3(LGUI), END ) : FUNC1(END));
          } else {
              return (event.pressed ? FUNC1( FUNC0(LCTRL), FUNC0(RSFT), FUNC2(TAB), FUNC3(RSFT), FUNC3(LCTRL), END ) : FUNC1(END));
          }
      case M_NTAB:
          /* Command + } or next tab*/
          if (use_cmd) {
              return (event.pressed ? FUNC1( FUNC0(LGUI), FUNC0(RSFT), FUNC2(RBRC), FUNC3(RSFT), FUNC3(LGUI), END ) : FUNC1(END));
          } else {
              return (event.pressed ? FUNC1( FUNC0(LCTRL), FUNC2(TAB), FUNC3(LCTRL), END ) : FUNC1(END));
          }
      case M_ZOUT:
          /* Command + - or Ctrl + -*/
          if (use_cmd) {
              return (event.pressed ? FUNC1( FUNC0(LGUI), FUNC2(MINS), FUNC3(LGUI), END ) : FUNC1(END));
          } else {
              return (event.pressed ? FUNC1( FUNC0(LCTRL), FUNC2(MINS), FUNC3(LCTRL), END ) : FUNC1(END));
          }
          break;
      case M_ZOIN:
          /* Command + = or Ctrl + =*/
          if (use_cmd) {
              return (event.pressed ? FUNC1( FUNC0(LGUI), FUNC2(EQL), FUNC3(LGUI), END ) : FUNC1(END));
          } else {
              return (event.pressed ? FUNC1( FUNC0(LCTRL), FUNC2(EQL), FUNC3(LCTRL), END ) : FUNC1(END));
          }
          break;
      case M_ENTR:
          /* Command + Enter or Ctrl + Enter*/
          if (use_cmd) {
              return (event.pressed ? FUNC1( FUNC0(LGUI), FUNC2(ENT), FUNC3(LGUI), END ) : FUNC1(END));
          } else {
              return (event.pressed ? FUNC1( FUNC0(LCTRL), FUNC2(ENT), FUNC3(LCTRL), END ) : FUNC1(END));
          }
      case M_SCRN:
          /* Command + Enter or Ctrl + Enter*/
          if (use_cmd) {
              return (event.pressed ? FUNC1( FUNC0(LGUI), FUNC0(LCTRL), FUNC0(LSFT), FUNC2(4), FUNC3(LSFT), FUNC3(LGUI), FUNC3(LCTRL), END ) : FUNC1(END));
          } else {
              return (event.pressed ? FUNC1( FUNC2(PSCR) ) : FUNC1(END));
          }
      case M_NSPC:
          /* Next space / desktop */
          if (use_cmd) {
              return (event.pressed ? FUNC1( FUNC0(LCTRL), FUNC2(RIGHT), FUNC3(LCTRL), END ) : FUNC1(END));
          } else {
              return (event.pressed ? FUNC1( FUNC0(LGUI), FUNC2(RIGHT), FUNC3(LGUI), END ) : FUNC1(END));
          }
          break;
      case M_PSPC:
          /* Previous space / desktop */
          if (use_cmd) {
              return (event.pressed ? FUNC1( FUNC0(LCTRL), FUNC2(LEFT), FUNC3(LCTRL), END ) : FUNC1(END));
          } else {
              return (event.pressed ? FUNC1( FUNC0(LGUI), FUNC2(LEFT), FUNC3(LGUI), END ) : FUNC1(END));
          }
        default:
            break;
    }
  return MACRO_NONE;
}
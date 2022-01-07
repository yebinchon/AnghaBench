
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mi_read_keyboard_state () ;
 int ui_set_modifier_state (int) ;

__attribute__((used)) static void
mi_check_modifier(void)
{
  int code;

  code = mi_read_keyboard_state();
  ui_set_modifier_state(code);
}

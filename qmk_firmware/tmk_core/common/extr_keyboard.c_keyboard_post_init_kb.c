
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int keyboard_post_init_user () ;

__attribute__((weak)) void keyboard_post_init_kb(void) { keyboard_post_init_user(); }


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgb_matrix_enable () ;

void keyboard_post_init_user(void) {
  rgb_matrix_enable();
}

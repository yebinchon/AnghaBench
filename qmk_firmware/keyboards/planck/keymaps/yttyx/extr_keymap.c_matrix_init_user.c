
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STENO_MODE_GEMINI ;
 int steno_set_mode (int ) ;

void matrix_init_user() {
  steno_set_mode(STENO_MODE_GEMINI);
}

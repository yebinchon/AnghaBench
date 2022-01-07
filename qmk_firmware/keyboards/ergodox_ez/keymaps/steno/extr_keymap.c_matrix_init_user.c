
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STENO_MODE_BOLT ;
 int steno_set_mode (int ) ;

void matrix_init_user(void) {
    steno_set_mode(STENO_MODE_BOLT);
}

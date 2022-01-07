
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMLOCK_PIN ;
 int matrix_init_user () ;
 int setPinOutput (int ) ;

void matrix_init_kb(void) {
    setPinOutput(NUMLOCK_PIN);
    matrix_init_user();
}

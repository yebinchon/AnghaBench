
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int matrix_init_user () ;

__attribute__((weak)) void matrix_init_kb(void) { matrix_init_user(); }

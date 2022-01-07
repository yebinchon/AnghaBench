
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bootmagic_lite () ;
 int matrix_init_user () ;

void matrix_init_kb(void) {



 bootmagic_lite();
 matrix_init_user();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRF ;
 int PORTF ;

void matrix_init_user(void) {

    DDRF |= (1<<7);
    PORTF &= ~(1<<7);

}

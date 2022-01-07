
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* analogRead (int ) ;
 int setPinInputHigh (int ) ;
 int swPin ;
 void* xOrigin ;
 int xPin ;
 void* yOrigin ;
 int yPin ;

void matrix_init_keymap(void) {

    setPinInputHigh(swPin);

    xOrigin = analogRead(xPin);
    yOrigin = analogRead(yPin);
}

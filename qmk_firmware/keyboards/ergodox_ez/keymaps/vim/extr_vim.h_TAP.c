
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int PRESS (int ) ;
 int RELEASE (int ) ;

void TAP(uint16_t keycode) {
    PRESS(keycode);
    RELEASE(keycode);
}

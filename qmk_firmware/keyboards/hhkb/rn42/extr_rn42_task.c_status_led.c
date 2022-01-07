
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRE ;
 int PORTE ;

__attribute__((used)) static void status_led(bool on)
{
    if (on) {
        DDRE |= (1<<6);
        PORTE &= ~(1<<6);
    } else {
        DDRE |= (1<<6);
        PORTE |= (1<<6);
    }
}

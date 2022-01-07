
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int serial_init () ;

__attribute__((used)) static inline uint8_t serial_mouse_init(void) {
    serial_init();
    return 0;
}

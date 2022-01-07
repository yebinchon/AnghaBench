
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int host_driver_t ;


 int _delay_ms (int) ;
 int clear_keyboard () ;
 int host_set_driver (int *) ;

void change_driver(host_driver_t *driver) {






    clear_keyboard();
    _delay_ms(1000);
    host_set_driver(driver);
}

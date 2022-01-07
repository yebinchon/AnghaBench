
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTC ;

__attribute__((used)) static inline void KEY_HYS_OFF(void) { (PORTC &= ~(1<<7)); }


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTD ;

__attribute__((used)) static inline void KEY_UNABLE(void) { (PORTD |= (1<<7)); }

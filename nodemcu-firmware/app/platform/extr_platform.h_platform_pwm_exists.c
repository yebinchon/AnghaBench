
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_PWM ;

__attribute__((used)) static inline int platform_pwm_exists( unsigned id ) { return ((id < NUM_PWM) && (id > 0)); }

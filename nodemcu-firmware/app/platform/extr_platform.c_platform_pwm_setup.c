
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;


 unsigned int NUM_PWM ;
 int PLATFORM_GPIO_FLOAT ;
 int PLATFORM_GPIO_OUTPUT ;
 int platform_gpio_mode (unsigned int,int ,int ) ;
 scalar_t__ platform_pwm_get_clock (unsigned int) ;
 int pwm_add (unsigned int) ;
 int pwm_set_duty (int ,unsigned int) ;
 int pwm_set_freq (int ,unsigned int) ;
 int pwm_start () ;
 unsigned int* pwms_duty ;

uint32_t platform_pwm_setup( unsigned pin, uint32_t frequency, unsigned duty )
{
  uint32_t clock;
  if ( pin < NUM_PWM)
  {
    platform_gpio_mode(pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT);
    if(!pwm_add(pin))
      return 0;

    pwm_set_duty(0, pin);
    pwms_duty[pin] = duty;
    pwm_set_freq((uint16_t)frequency, pin);
  } else {
    return 0;
  }
  clock = platform_pwm_get_clock( pin );
  if (!pwm_start()) {
    return 0;
  }
  return clock;
}

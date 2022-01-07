
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int PWMDriver ;


 scalar_t__ BREATHING_HALT_OFF ;
 scalar_t__ BREATHING_HALT_ON ;
 int BREATHING_STEPS ;
 int PWMD3 ;
 int PWM_FRACTION_TO_WIDTH (int *,int,int ) ;
 int breathing_counter ;
 scalar_t__ breathing_halt ;
 int breathing_interrupt_disable () ;
 int breathing_period ;
 int* breathing_table ;
 int chSysLockFromISR () ;
 int chSysUnlockFromISR () ;
 int cie_lightness (int ) ;
 int pwmEnableChannelI (int *,int ,int ) ;
 int scale_backlight (int) ;

__attribute__((used)) static void breathing_callback(PWMDriver *pwmp)
{
  (void)pwmp;
  uint16_t interval = (uint16_t) breathing_period * 256 / BREATHING_STEPS;

  breathing_counter = (breathing_counter + 1) % (breathing_period * 256);
  uint8_t index = breathing_counter / interval % BREATHING_STEPS;

  if (((breathing_halt == BREATHING_HALT_ON) && (index == BREATHING_STEPS / 2)) ||
      ((breathing_halt == BREATHING_HALT_OFF) && (index == BREATHING_STEPS - 1)))
  {
      breathing_interrupt_disable();
  }

  uint32_t duty = cie_lightness(scale_backlight(breathing_table[index] * 256));

  chSysLockFromISR();
  pwmEnableChannelI(
    &PWMD3,
    0,
    PWM_FRACTION_TO_WIDTH(
      &PWMD3,
      0xFFFF,
      duty
    )
  );
  chSysUnlockFromISR();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pwm2_module_data_t ;


 int GPIO_PIN_NUM ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int PIN_PULLUP_EN (int ) ;
 scalar_t__ isPinSetup (int *,int) ;
 int * pin_func ;
 int * pin_mux ;

__attribute__((used)) static void configureAllPinsAsGpioOutput(pwm2_module_data_t *moduleData) {
  for (int i = 1; i < GPIO_PIN_NUM; i++) {
    if (isPinSetup(moduleData, i)) {
      PIN_FUNC_SELECT(pin_mux[i], pin_func[i]);
      PIN_PULLUP_EN(pin_mux[i]);
    }
  }
}

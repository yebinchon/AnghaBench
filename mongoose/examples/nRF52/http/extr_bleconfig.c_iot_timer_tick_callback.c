
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APP_ERROR_CHECK (int ) ;
 int UNUSED_VARIABLE (void*) ;
 int iot_timer_update () ;

__attribute__((used)) static void iot_timer_tick_callback(void * p_context)
{
  UNUSED_VARIABLE(p_context);

  uint32_t err_code = iot_timer_update();
  APP_ERROR_CHECK(err_code);
}

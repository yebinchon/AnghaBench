
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APP_ERROR_CHECK (int ) ;
 int APP_TIMER_INIT (int ,int ,int) ;
 int APP_TIMER_MODE_REPEATED ;
 int APP_TIMER_OP_QUEUE_SIZE ;
 int APP_TIMER_PRESCALER ;
 int app_timer_create (int *,int ,int ) ;
 int iot_timer_tick_callback ;
 int m_iot_timer_tick_src_id ;

__attribute__((used)) static void timers_init(void)
{
  uint32_t err_code;


  APP_TIMER_INIT(APP_TIMER_PRESCALER, APP_TIMER_OP_QUEUE_SIZE, 0);


  err_code = app_timer_create(&m_iot_timer_tick_src_id,
      APP_TIMER_MODE_REPEATED,
      iot_timer_tick_callback);
  APP_ERROR_CHECK(err_code);
}

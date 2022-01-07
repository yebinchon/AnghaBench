
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APP_ERROR_CHECK (int ) ;
 int APP_TIMER_APPSH_INIT (int ,int ,int ,int) ;
 int APP_TIMER_MAX_TIMERS ;
 int APP_TIMER_MODE_REPEATED ;
 int APP_TIMER_OP_QUEUE_SIZE ;
 int APP_TIMER_PRESCALER ;
 int app_timer_create (int *,int ,int ) ;
 int m_sys_timer_id ;
 int system_timer_callback ;

__attribute__((used)) static void timers_init(void)
{
  uint32_t err_code;


  APP_TIMER_APPSH_INIT(APP_TIMER_PRESCALER, APP_TIMER_MAX_TIMERS, APP_TIMER_OP_QUEUE_SIZE, 1);


  err_code = app_timer_create(&m_sys_timer_id,
      APP_TIMER_MODE_REPEATED,
      system_timer_callback);
  APP_ERROR_CHECK(err_code);
}

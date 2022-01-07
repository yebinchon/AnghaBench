
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int list_of_clients ;
struct TYPE_4__ {int member_0; TYPE_2__ const* member_1; } ;
typedef TYPE_1__ iot_timer_clients_list_t ;
struct TYPE_5__ {int member_1; int member_0; } ;
typedef TYPE_2__ iot_timer_client_t ;


 int APP_ERROR_CHECK (int ) ;
 int APP_TIMER_PRESCALER ;
 int APP_TIMER_TICKS (int ,int ) ;

 int IOT_TIMER_RESOLUTION_IN_MS ;


 int SEC_TO_MILLISEC (int ) ;
 int app_timer_start (int ,int ,int *) ;


 int iot_timer_client_list_set (TYPE_1__ const*) ;
 int m_iot_timer_tick_src_id ;


__attribute__((used)) static void iot_timer_init(void)
{
  uint32_t err_code;

  static const iot_timer_client_t list_of_clients[] =
  {
    {128, 131},




  };


  static const iot_timer_clients_list_t iot_timer_clients =
  {
    (sizeof(list_of_clients) / sizeof(iot_timer_client_t)),
    &(list_of_clients[0]),
  };


  err_code = iot_timer_client_list_set(&iot_timer_clients);
  APP_ERROR_CHECK(err_code);


  err_code = app_timer_start(m_iot_timer_tick_src_id, APP_TIMER_TICKS(IOT_TIMER_RESOLUTION_IN_MS, APP_TIMER_PRESCALER), ((void*)0));


  APP_ERROR_CHECK(err_code);
}

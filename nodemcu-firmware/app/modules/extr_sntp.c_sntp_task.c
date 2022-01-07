
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int os_param_t ;
typedef int lua_State ;


 int SNTP_DOLOOKUPS_ID ;
 int SNTP_HANDLE_RESULT_ID ;
 int handle_error (int *,int ,int *) ;
 int * lua_getstate () ;
 int sntp_dolookups (int *) ;
 int sntp_handle_result (int *) ;

__attribute__((used)) static void sntp_task(os_param_t param, uint8_t prio)
{
  (void) param;
  (void) prio;

  lua_State *L = lua_getstate();

  if (param == SNTP_HANDLE_RESULT_ID) {
    sntp_handle_result(L);
  } else if (param == SNTP_DOLOOKUPS_ID) {
    sntp_dolookups(L);
  } else {
    handle_error(L, param, ((void*)0));
  }
}

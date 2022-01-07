
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int os_param_t ;


 int lswitec_dequeue (int ) ;
 int lua_getstate () ;

__attribute__((used)) static void lswitec_task(os_param_t param, uint8_t prio)
{
  (void) param;
  (void) prio;

  lswitec_dequeue(lua_getstate());
}

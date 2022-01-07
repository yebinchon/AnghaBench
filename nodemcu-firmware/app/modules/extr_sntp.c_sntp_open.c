
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int sntp_task ;
 int task_get_id (int ) ;
 int tasknumber ;

__attribute__((used)) static int sntp_open(lua_State *L)
{
  (void) L;

  tasknumber = task_get_id(sntp_task);

  return 0;
}

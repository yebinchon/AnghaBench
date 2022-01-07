
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lrotary_task ;
 int task_get_id (int ) ;
 int tasknumber ;

__attribute__((used)) static int rotary_open(lua_State *L)
{
  tasknumber = task_get_id(lrotary_task);
  return 0;
}

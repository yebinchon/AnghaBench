
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enduser_setup_stop (int ) ;
 int lua_getstate () ;

__attribute__((used)) static void enduser_setup_stop_callback(void *ptr)
{
  enduser_setup_stop(lua_getstate());
}

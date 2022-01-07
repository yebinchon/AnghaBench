
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_RODATA_AREA (char const*) ;

__attribute__((used)) static int lua_is_ptr_in_ro_area(const char *p) {



  return IN_RODATA_AREA(p);

}

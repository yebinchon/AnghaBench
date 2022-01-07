
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ALIGN (size_t) ;
 scalar_t__ LUA_MAX_FLASH_SIZE ;
 int WORDSHIFT ;
 scalar_t__ curOffset ;
 int fatal (char*) ;
 scalar_t__ flashImage ;

__attribute__((used)) static void *flashAlloc(lua_State* L, size_t n) {
  void *p = (void *)(flashImage + curOffset);
  curOffset += ALIGN(n)>>WORDSHIFT;
  if (curOffset > LUA_MAX_FLASH_SIZE) {
    fatal("Out of Flash memory");
  }
  return p;
}

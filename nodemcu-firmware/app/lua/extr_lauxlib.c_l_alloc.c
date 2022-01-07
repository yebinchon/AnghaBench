
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int egcmode; scalar_t__ memlimit; } ;


 int EGC_ALWAYS ;
 int EGC_ON_ALLOC_FAILURE ;
 int EGC_ON_MEM_LIMIT ;
 TYPE_1__* G (int *) ;
 int free (void*) ;
 scalar_t__ l_check_memlimit (int *,size_t) ;
 int luaC_fullgc (int *) ;
 scalar_t__ system_get_free_heap_size () ;
 scalar_t__ this_realloc (void*,size_t,size_t) ;

__attribute__((used)) static void *l_alloc (void *ud, void *ptr, size_t osize, size_t nsize) {
  lua_State *L = (lua_State *)ud;
  int mode = L == ((void*)0) ? 0 : G(L)->egcmode;
  void *nptr;

  if (nsize == 0) {



    free(ptr);
    return ((void*)0);

  }
  if (L != ((void*)0) && (mode & EGC_ALWAYS))
    luaC_fullgc(L);

  if (L != ((void*)0) && (mode & EGC_ON_MEM_LIMIT) && G(L)->memlimit < 0 &&
      (system_get_free_heap_size() < (-G(L)->memlimit)))
    luaC_fullgc(L);

  if(nsize > osize && L != ((void*)0)) {



    if(G(L)->memlimit > 0 && (mode & EGC_ON_MEM_LIMIT) && l_check_memlimit(L, nsize - osize))
      return ((void*)0);
  }
  nptr = (void *)this_realloc(ptr, osize, nsize);
  if (nptr == ((void*)0) && L != ((void*)0) && (mode & EGC_ON_ALLOC_FAILURE)) {
    luaC_fullgc(L);
    nptr = (void *)this_realloc(ptr, osize, nsize);
  }
  return nptr;
}

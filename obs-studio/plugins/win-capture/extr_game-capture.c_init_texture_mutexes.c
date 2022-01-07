
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct game_capture {int retrying; void** texture_mutexes; } ;
typedef int DWORD ;


 int GetLastError () ;
 int MUTEX_TEXTURE1 ;
 int MUTEX_TEXTURE2 ;
 int info (char*) ;
 void* open_mutex_gc (struct game_capture*,int ) ;
 int warn (char*,int) ;

__attribute__((used)) static inline bool init_texture_mutexes(struct game_capture *gc)
{
 gc->texture_mutexes[0] = open_mutex_gc(gc, MUTEX_TEXTURE1);
 gc->texture_mutexes[1] = open_mutex_gc(gc, MUTEX_TEXTURE2);

 if (!gc->texture_mutexes[0] || !gc->texture_mutexes[1]) {
  DWORD error = GetLastError();
  if (error == 2) {
   if (!gc->retrying) {
    gc->retrying = 2;
    info("hook not loaded yet, retrying..");
   }
  } else {
   warn("failed to open texture mutexes: %lu",
        GetLastError());
  }
  return 0;
 }

 return 1;
}

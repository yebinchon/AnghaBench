
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct game_capture {int keepalive_mutex; int process_id; } ;


 int CreateMutexW (int *,int,int *) ;
 int GetLastError () ;
 int WINDOW_HOOK_KEEPALIVE ;
 int _snwprintf (int *,int,char*,int ,int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static inline bool init_keepalive(struct game_capture *gc)
{
 wchar_t new_name[64];
 _snwprintf(new_name, 64, L"%s%lu", WINDOW_HOOK_KEEPALIVE,
     gc->process_id);

 gc->keepalive_mutex = CreateMutexW(((void*)0), 0, new_name);
 if (!gc->keepalive_mutex) {
  warn("Failed to create keepalive mutex: %lu", GetLastError());
  return 0;
 }

 return 1;
}

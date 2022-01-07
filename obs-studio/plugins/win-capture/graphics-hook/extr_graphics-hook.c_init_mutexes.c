
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int GetCurrentProcessId () ;
 int MUTEX_TEXTURE1 ;
 int MUTEX_TEXTURE2 ;
 scalar_t__ init_mutex (int ,int ) ;
 scalar_t__* tex_mutexes ;

__attribute__((used)) static inline bool init_mutexes(void)
{
 DWORD pid = GetCurrentProcessId();

 tex_mutexes[0] = init_mutex(MUTEX_TEXTURE1, pid);
 if (!tex_mutexes[0]) {
  return 0;
 }

 tex_mutexes[1] = init_mutex(MUTEX_TEXTURE2, pid);
 if (!tex_mutexes[1]) {
  return 0;
 }

 return 1;
}

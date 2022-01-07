
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* base_get_proc (char const*) ;
 void* wgl_get_proc (char const*) ;

__attribute__((used)) static inline void *get_proc(const char *name)
{
 void *func = wgl_get_proc(name);
 if (!func)
  func = base_get_proc(name);

 return func;
}

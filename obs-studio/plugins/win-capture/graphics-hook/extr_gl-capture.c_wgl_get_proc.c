
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ jimglGetProcAddress (char const*) ;

__attribute__((used)) static inline void *wgl_get_proc(const char *name)
{
 return (void *)jimglGetProcAddress(name);
}

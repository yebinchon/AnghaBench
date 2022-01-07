
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetProcAddress (int ,char const*) ;
 int gl ;

__attribute__((used)) static inline void *base_get_proc(const char *name)
{
 return (void *)GetProcAddress(gl, name);
}

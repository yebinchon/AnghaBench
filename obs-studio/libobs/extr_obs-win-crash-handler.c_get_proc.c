
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 scalar_t__ GetProcAddress (int ,char const*) ;

__attribute__((used)) static inline void *get_proc(HMODULE module, const char *func)
{
 return (void *)GetProcAddress(module, func);
}

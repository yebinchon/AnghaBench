
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* dlsym (void*,char const*) ;

void *os_dlsym(void *module, const char *func)
{
 return dlsym(module, func);
}

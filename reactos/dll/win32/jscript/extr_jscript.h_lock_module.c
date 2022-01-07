
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InterlockedIncrement (int *) ;
 int module_ref ;

__attribute__((used)) static inline void lock_module(void)
{
    InterlockedIncrement(&module_ref);
}

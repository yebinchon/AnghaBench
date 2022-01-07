
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InterlockedDecrement (int *) ;
 int module_ref ;

__attribute__((used)) static inline void unlock_module(void) {
    InterlockedDecrement(&module_ref);
}

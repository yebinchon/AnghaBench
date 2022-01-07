
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InterlockedIncrement (int *) ;
 int dll_refs ;

__attribute__((used)) static inline void DEVENUM_LockModule(void) { InterlockedIncrement(&dll_refs); }

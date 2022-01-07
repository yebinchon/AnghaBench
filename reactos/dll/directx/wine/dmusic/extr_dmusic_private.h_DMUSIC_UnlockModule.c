
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMUSIC_refCount ;
 int InterlockedDecrement (int *) ;

__attribute__((used)) static inline void DMUSIC_UnlockModule(void) { InterlockedDecrement( &DMUSIC_refCount ); }


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * snesflags ;

__attribute__((used)) static bool snes_asm_fini (void* user) {
 free(snesflags);
 snesflags = ((void*)0);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int engine ;
 int tms320_dasm_fini (int *) ;

__attribute__((used)) static int tms320_fini(void * unused) {
 return tms320_dasm_fini (&engine);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int engine ;
 int tms320_dasm_fini (int *) ;

__attribute__((used)) static bool tms320_fini(void * user) {
 return tms320_dasm_fini (&engine);
}

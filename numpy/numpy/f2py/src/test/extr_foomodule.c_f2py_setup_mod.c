
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* data; void (* func ) () ;} ;


 TYPE_1__* f2py_mod_def ;

__attribute__((used)) static void f2py_setup_mod(char *a,char *b,char *c,void (*d)(),char *init) {
    f2py_mod_def[0].data = a;
    f2py_mod_def[1].data = b;
    f2py_mod_def[2].data = c;
    f2py_mod_def[3].func = d;
    f2py_mod_def[4].data = init;
}

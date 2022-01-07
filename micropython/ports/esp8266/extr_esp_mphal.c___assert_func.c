
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_raise_msg (int *,char*) ;
 int mp_type_AssertionError ;
 int printf (char*,char const*,int,char const*,char const*) ;

void __assert_func(const char *file, int line, const char *func, const char *expr) {
    printf("assert:%s:%d:%s: %s\n", file, line, func, expr);
    mp_raise_msg(&mp_type_AssertionError, "C-level assert");
}

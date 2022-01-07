
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,unsigned int,char const*,char const*) ;

void __assert_fail(const char *__assertion, const char *__file,
    unsigned int __line, const char *__function) {
    printf("Assert at %s:%d:%s() \"%s\" failed\n", __file, __line, __function, __assertion);
    for (;;) ;
}
